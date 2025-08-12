use std::{
    collections::HashMap,
    fs::read_to_string,
    path::{Path, PathBuf},
};

use revive_dt_common::iterators::FilesWithExtensionIterator;

use alloy::primitives::{Address, FixedBytes};
use alloy::{hex, primitives::U256};
use anyhow::{Context, Result, bail};
use serde_json::Value;

use crate::common::*;

pub fn handle_caller_replacement(
    path: &Path,
    private_key_start: usize,
) -> Result<U256> {
    let metadata_file_paths = if path.is_dir() {
        Box::new(MetadataFile::SUPPORTED_EXTENSIONS.iter().copied().fold(
            FilesWithExtensionIterator::new(path),
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

    let mut allocator =
        PrivateKeyAllocator::new_with_value(U256::from(private_key_start));
    for mut metadata_file in metadata_objects {
        for mut case in metadata_file.cases_mut() {
            let replacement_map =
                case.callers().fold(HashMap::new(), |mut map, caller| {
                    map.entry(caller)
                        .or_insert_with(|| allocator.allocate().address());
                    map
                });
            case.apply_replacements(&replacement_map)?;
        }
        metadata_file.write()?;
    }

    Ok(allocator.into_inner())
}

struct MetadataFile {
    path: PathBuf,
    full_content: String,
    metadata_content: String,
    metadata_object: Value,
    comment_sequence: Option<&'static str>,
}

impl MetadataFile {
    const JSON_EXTENSION: &str = "json";
    const SOLIDITY_EXTENSION: &str = "sol";
    const VYPER_EXTENSION: &str = "vy";
    const LLVM_IR_EXTENSION: &str = "ll";
    const YUL_IR_EXTENSION: &str = "yul";

    const SUPPORTED_EXTENSIONS: &[&str] = &[
        Self::JSON_EXTENSION,
        Self::SOLIDITY_EXTENSION,
        Self::VYPER_EXTENSION,
        Self::LLVM_IR_EXTENSION,
        Self::YUL_IR_EXTENSION,
    ];

    fn new(path: impl AsRef<Path>) -> Result<Option<Self>> {
        let path = path.as_ref();

        let (comment_sequence, _) = match path
            .extension()
            .and_then(|extension| extension.to_str())
        {
            Some(Self::JSON_EXTENSION) => (None, Self::JSON_EXTENSION),
            Some(Self::SOLIDITY_EXTENSION) => {
                (Some("//!"), Self::SOLIDITY_EXTENSION)
            }
            Some(Self::YUL_IR_EXTENSION) => {
                (Some("//!"), Self::YUL_IR_EXTENSION)
            }
            Some(Self::VYPER_EXTENSION) => (Some("#!"), Self::VYPER_EXTENSION),
            Some(Self::LLVM_IR_EXTENSION) => {
                (Some(";!"), Self::LLVM_IR_EXTENSION)
            }
            Some(_) | None => bail!("Could not determine the comment sequence"),
        };

        let full_content = read_to_string(path)?;
        let metadata_content = full_content
            .split('\n')
            .skip_while(|line| {
                !line.starts_with(comment_sequence.unwrap_or(""))
            })
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
            metadata_object,
            comment_sequence,
        }))
    }

    fn cases_mut(&mut self) -> impl Iterator<Item = CaseWrapper<&mut Value>> {
        self.metadata_object
            .get_mut("cases")
            .and_then(|cases| cases.as_array_mut())
            .into_iter()
            .flat_map(|array| array.iter_mut())
            .map(CaseWrapper)
    }

    fn write(&self) -> Result<()> {
        let new_metadata_content = match self.comment_sequence {
            Some(comment_sequence) => {
                serde_json::to_string_pretty(&self.metadata_object)?
                    .split('\n')
                    .map(|line| format!("{comment_sequence} {line}"))
                    .collect::<Vec<_>>()
                    .join("\n")
            }
            None => serde_json::to_string_pretty(&self.metadata_object)?,
        };

        let new_file_content = self.full_content.replace(
            self.metadata_content.as_str(),
            new_metadata_content.as_str(),
        );

        std::fs::write(self.path.as_path(), new_file_content)?;
        Ok(())
    }
}

struct CaseWrapper<T>(T);

impl CaseWrapper<&mut Value> {
    fn inputs(&self) -> impl Iterator<Item = InputWrapper<&Value>> {
        self.0
            .get("inputs")
            .and_then(|inputs| inputs.as_array())
            .into_iter()
            .flat_map(|array| array.iter())
            .map(InputWrapper)
    }

    fn inputs_mut(&mut self) -> impl Iterator<Item = InputWrapper<&mut Value>> {
        self.0
            .get_mut("inputs")
            .and_then(|inputs| inputs.as_array_mut())
            .into_iter()
            .flat_map(|array| array.iter_mut())
            .map(InputWrapper)
    }

    fn callers(&self) -> impl Iterator<Item = Address> {
        self.inputs().map(|input| input.caller())
    }

    fn apply_replacements(
        &mut self,
        map: &HashMap<Address, Address>,
    ) -> Result<()> {
        if let Some(new_default_address) =
            map.get(&InputWrapper::<()>::ML_DEFAULT_CALLER)
        {
            self.inputs_mut().try_for_each(|mut input| {
                input.replace_caller_if_default(new_default_address)
            })?;
        }

        // The reason why we do a string replace rather than replacing the
        // caller is that we want to replace all of the occurrences of that
        // byte sequence from everywhere including if it's part of another byte
        // sequence.
        let mut case_string = serde_json::to_string(&self.0)?;
        for (old, new) in map.iter() {
            let old = old.to_string();
            let new = new.to_string();
            case_string =
                case_insensitive_find_and_replace(&case_string, &old, &new);
        }
        *self.0 = serde_json::from_str(&case_string)?;

        Ok(())
    }
}

struct InputWrapper<T>(T);

impl<T> InputWrapper<T> {
    const ML_DEFAULT_CALLER: Address = Address(FixedBytes(hex!(
        "0xdeadbeef01000000000000000000000000000000"
    )));
}

impl InputWrapper<&Value> {
    fn caller(&self) -> Address {
        self.0
            .get("caller")
            .and_then(|caller| caller.as_str())
            .and_then(|caller| caller.parse().ok())
            .unwrap_or(Self::ML_DEFAULT_CALLER)
    }
}

impl InputWrapper<&mut Value> {
    fn replace_caller_if_default(&mut self, new: &Address) -> Result<()> {
        let input = self
            .0
            .as_object_mut()
            .context("The input must be an object")?;
        match input.get_mut("caller") {
            Some(Value::String(caller)) => {
                if caller
                    .eq_ignore_ascii_case(&Self::ML_DEFAULT_CALLER.to_string())
                {
                    *caller = new.to_string()
                }
            }
            None => {
                input.insert(
                    "caller".to_owned(),
                    Value::String(new.to_string()),
                );
            }
            _ => bail!("Caller mut be string"),
        };
        Ok(())
    }
}
