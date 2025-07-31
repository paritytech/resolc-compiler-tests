//! A binary helper tool for the ML metadata files.

use std::{
    collections::HashMap,
    fs::read_to_string,
    path::{Path, PathBuf},
};

use alloy::primitives::{Address, FixedBytes};
use alloy::{hex, primitives::U256, signers::local::PrivateKeySigner};
use anyhow::{Result, bail};
use clap::Parser;

use revive_dt_common::iterators::FilesWithExtensionIterator;
use serde_json::Value;

/// A command-line tool used to augment the ML metadata files.
#[derive(Clone, Debug, Parser)]
#[clap(name = "helper", term_width = 80)]
pub enum Cli {
    /// Replaces all of the callers found in the metadata files with callers
    /// derived from sequential private keys starting from 1.
    ReplaceCaller {
        /// The path of the metadata file(s).
        ///
        /// This can either be a path to a directory, in which case all of the
        /// metadata files will be discovered and have their callers replaced or
        /// it can be the path to a metadata file (JSON, Sol, or others) to run
        /// the replacement logic on.
        path: PathBuf,
    },
}

fn main() -> Result<()> {
    let cli = Cli::try_parse()?;

    match cli {
        Cli::ReplaceCaller { path } => {
            let highest_private_key = handle_caller_replacement(&path)?;
            println!("Highest private key: {highest_private_key}");
        }
    }

    Ok(())
}

fn handle_caller_replacement(path: &Path) -> Result<U256> {
    let metadata_file_paths = if path.is_dir() {
        Box::new(MetadataFile::SUPPORTED_EXTENSIONS.iter().copied().fold(
            FilesWithExtensionIterator::new(path.to_path_buf()),
            FilesWithExtensionIterator::with_allowed_extension,
        )) as Box<dyn Iterator<Item = _>>
    } else {
        Box::new(std::iter::once(path.to_path_buf()))
    };
    let metadata_objects = metadata_file_paths
        .map(MetadataFile::new)
        .filter_map(|metadata| match metadata {
            Ok(Some(metadata)) => Some(Ok(metadata)),
            Ok(None) => None,
            Err(err) => Some(Err(err)),
        })
        .collect::<Result<Vec<_>>>()?;

    let mut allocator = PrivateKeyAllocator::new();
    for mut metadata_file in metadata_objects {
        for mut case in metadata_file.cases_mut() {
            let replacement_map = case
                .callers()
                .map(|caller| (caller, allocator.allocate().address()))
                .collect::<HashMap<_, _>>();
            case.apply_replacements(&replacement_map);
        }
    }

    Ok(allocator.0)
}

pub struct MetadataFile {
    pub path: PathBuf,
    pub full_content: String,
    pub metadata_content: String,
    pub metadata_string: String,
    pub metadata_object: Value,
    pub extension: &'static str,
    pub comment_sequence: Option<&'static str>,
}

impl MetadataFile {
    pub const JSON_EXTENSION: &str = "json";
    pub const SOLIDITY_EXTENSION: &str = "sol";
    pub const VYPER_EXTENSION: &str = "vy";
    pub const LLVM_IR_EXTENSION: &str = "ll";
    pub const YUL_IR_EXTENSION: &str = "yul";

    pub const SUPPORTED_EXTENSIONS: &[&str] = &[
        Self::JSON_EXTENSION,
        Self::SOLIDITY_EXTENSION,
        Self::VYPER_EXTENSION,
        Self::LLVM_IR_EXTENSION,
        Self::YUL_IR_EXTENSION,
    ];

    pub fn new(path: impl AsRef<Path>) -> Result<Option<Self>> {
        let path = path.as_ref();

        let (comment_sequence, extension) =
            match path.extension().and_then(|extension| extension.to_str()) {
                Some(Self::JSON_EXTENSION) => (None, Self::JSON_EXTENSION),
                Some(Self::SOLIDITY_EXTENSION) => (Some("//!"), Self::SOLIDITY_EXTENSION),
                Some(Self::YUL_IR_EXTENSION) => (Some("//!"), Self::YUL_IR_EXTENSION),
                Some(Self::VYPER_EXTENSION) => (Some("#!"), Self::VYPER_EXTENSION),
                Some(Self::LLVM_IR_EXTENSION) => (Some(";!"), Self::LLVM_IR_EXTENSION),
                Some(_) | None => bail!("Could not determine the comment sequence"),
            };

        let full_content = read_to_string(path)?;
        let metadata_content = full_content
            .split('\n')
            .skip_while(|line| !line.starts_with(comment_sequence.unwrap_or("")))
            .take_while(|line| line.starts_with(comment_sequence.unwrap_or("")))
            .collect::<Vec<_>>()
            .join("\n");
        let metadata_string = metadata_content
            .split('\n')
            .map(|line| line.replace(comment_sequence.unwrap_or(""), ""))
            .collect::<String>();

        if metadata_string.is_empty() {
            return Ok(None);
        }

        let metadata_object = serde_json::from_str::<Value>(&metadata_string)?;

        Ok(Some(Self {
            path: path.to_path_buf(),
            full_content,
            metadata_content,
            metadata_string,
            metadata_object,
            extension,
            comment_sequence,
        }))
    }

    pub fn cases(&self) -> impl Iterator<Item = CaseWrapper<&Value>> {
        self.metadata_object
            .get("cases")
            .and_then(|cases| cases.as_array())
            .into_iter()
            .flat_map(|array| array.iter())
            .map(CaseWrapper)
    }

    pub fn cases_mut(&mut self) -> impl Iterator<Item = CaseWrapper<&mut Value>> {
        self.metadata_object
            .get_mut("cases")
            .and_then(|cases| cases.as_array_mut())
            .into_iter()
            .flat_map(|array| array.iter_mut())
            .map(CaseWrapper)
    }

    pub fn write(&self) -> Result<()> {
        let new_metadata_content = match self.comment_sequence {
            Some(comment_sequence) => serde_json::to_string_pretty(&self.metadata_content)?
                .split('\n')
                .map(|line| format!("{comment_sequence} {line}"))
                .collect::<String>(),
            None => serde_json::to_string_pretty(&self.metadata_content)?,
        };

        let new_file_content = self.full_content.replace(
            self.metadata_content.as_str(),
            new_metadata_content.as_str(),
        );

        std::fs::write(self.path.as_path(), new_file_content)?;
        Ok(())
    }
}

pub struct CaseWrapper<T>(T);

impl<'a> CaseWrapper<&'a Value> {
    pub fn inputs(&'a self) -> impl Iterator<Item = InputWrapper<&'a Value>> + 'a {
        self.0
            .get("inputs")
            .and_then(|inputs| inputs.as_array())
            .into_iter()
            .flat_map(|array| array.iter())
            .map(InputWrapper)
    }

    pub fn callers(&self) -> impl Iterator<Item = Address> {
        self.inputs().map(|input| input.caller())
    }
}

impl<'a> CaseWrapper<&'a mut Value> {
    pub fn inputs(&'a self) -> impl Iterator<Item = InputWrapper<&'a Value>> + 'a {
        self.0
            .get("inputs")
            .and_then(|inputs| inputs.as_array())
            .into_iter()
            .flat_map(|array| array.iter())
            .map(InputWrapper)
    }

    pub fn callers(&self) -> impl Iterator<Item = Address> {
        self.inputs().map(|input| input.caller())
    }

    pub fn apply_replacements(&mut self, map: &HashMap<Address, Address>) {
        let mut case_string = serde_json::to_string(&self.0).unwrap();
        for (old, new) in map.iter() {
            let old = old.to_string();
            let new = new.to_string();
            case_string = case_string.replace(old.as_str(), new.as_str());
        }
        *self.0 = serde_json::from_str(&case_string).unwrap();
    }
}

pub struct InputWrapper<T>(T);

impl<T> InputWrapper<T> {
    pub const ML_DEFAULT_CALLER: Address = Address(FixedBytes(hex!(
        "0xdeadbeef01000000000000000000000000000000"
    )));
}

impl InputWrapper<&Value> {
    pub fn caller(&self) -> Address {
        self.0
            .get("caller")
            .and_then(|caller| caller.as_str())
            .and_then(|caller| caller.parse().ok())
            .unwrap_or(Self::ML_DEFAULT_CALLER)
    }
}

#[derive(Default)]
pub struct PrivateKeyAllocator(U256);

impl PrivateKeyAllocator {
    pub fn new() -> Self {
        Default::default()
    }

    pub fn allocate(&mut self) -> PrivateKeySigner {
        self.0 += U256::ONE;
        PrivateKeySigner::from_bytes(&FixedBytes(self.0.to_be_bytes::<32>())).unwrap()
    }
}
