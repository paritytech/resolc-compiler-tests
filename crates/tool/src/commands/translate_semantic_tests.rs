#![allow(clippy::field_reassign_with_default)]

use std::collections::HashMap;
use std::fs::{File, create_dir_all, read_dir};
use std::path::{Path, PathBuf};

use alloy::hex::ToHexExt;
use alloy::primitives::{U256, keccak256};
use revive_dt_common::iterators::*;

use anyhow::{Context, Result, bail};
use revive_dt_format::case::Case;
use revive_dt_format::input::{
    BalanceAssertion, Calldata, EtherValue, Event, Expected, ExpectedOutput,
    Input, Method, Step, StorageEmptyAssertion,
};
use revive_dt_format::metadata::{
    ContractIdent, ContractInstance, ContractPathAndIdent, Metadata,
};

use crate::semantic_tests_parser::*;

pub fn handle_semantic_tests_translation(
    root_directory: impl AsRef<Path>,
    output_directory: impl AsRef<Path>,
) -> Result<()> {
    let root_directory = &root_directory
        .as_ref()
        .canonicalize()
        .context("Canonicalization of root directory failed")?;
    let output_directory = &output_directory
        .as_ref()
        .canonicalize()
        .context("Canonicalization of output directory failed")?;

    if !root_directory.is_dir() {
        bail!("Provided root dir path is not a directory");
    }
    if !output_directory.is_dir() {
        bail!("Provided output directory path is not a directory");
    }
    if read_dir(output_directory)?.next().is_some() {
        bail!("Output directory is not empty");
    }

    for path in FilesWithExtensionIterator::new(root_directory)
        .with_allowed_extension("sol")
    {
        let Some(mut semantic_test) =
            SemanticTest::from_semantic_test_file(path)?
        else {
            continue;
        };

        let original_test_directory = semantic_test
            .path
            .parent()
            .expect("Impossible for the test to not have a parent directory");
        let test_name = semantic_test
            .path
            .file_stem()
            .expect("Impossible for it to not have a file name")
            .to_string_lossy()
            .into_owned();

        // We're creating a new directory for the test. This directory will be
        // the same relative path in output directory as it's in the root dir.
        let test_directory = {
            let relative_dir = original_test_directory
                .strip_prefix(root_directory)
                .expect("Semantic test file is not under root directory");
            output_directory.join(relative_dir).join(test_name.as_str())
        };
        create_dir_all(&test_directory)?;

        // Writes all of the source files to the specific directories for them.
        // We also update the source paths for all of the sources so that they
        // are absolute paths pointing to the absolute path of the source in
        // the new test directory.
        let mut sources = HashMap::new();
        for (source_path, source) in semantic_test.sources.into_iter() {
            let source_path = test_directory.join(
                source_path
                    .strip_prefix(original_test_directory)
                    .unwrap_or_else(|_| &source_path),
            );
            write_to_file_create_all_dirs(
                source_path.as_path(),
                source.trim(),
            )?;
            sources.insert(
                source_path
                    .canonicalize()
                    .context("Failed to canonicalize source path")?,
                source,
            );
        }
        semantic_test.sources = sources;

        let mut metadata = Metadata::default();
        let main_contract_instance =
            ContractInstance::new(semantic_test.main_contract_ident.as_str());
        let main_contract_ident =
            ContractIdent::new(semantic_test.main_contract_ident.as_str());

        // Adding the contracts section of the metadata.
        metadata.contracts.get_or_insert_default().insert(
            main_contract_instance.clone(),
            ContractPathAndIdent {
                contract_source_path: semantic_test
                    .main_contract_source_path
                    .file_name()
                    .map(PathBuf::from)
                    .context("Impossible for the main contract to not have a filename")?,
                contract_ident: main_contract_ident,
            },
        );

        // Adding the libraries section of the metadata.
        for (library_path, library_idents) in semantic_test.libraries.iter() {
            for library_ident in library_idents.iter().map(ContractIdent::new) {
                let library_instance =
                    ContractInstance::new(library_ident.as_str());

                let library_path = library_path
                    .strip_prefix(original_test_directory)
                    .unwrap_or(library_path.as_path());

                metadata
                    .libraries
                    .get_or_insert_default()
                    .entry(library_path.to_path_buf())
                    .or_default()
                    .insert(library_ident.clone(), library_instance.clone());

                metadata.contracts.get_or_insert_default().insert(
                    library_instance,
                    ContractPathAndIdent {
                        contract_source_path: library_path.to_path_buf(),
                        contract_ident: library_ident,
                    },
                );
            }
        }

        // Adding the test steps
        let mut case = Case {
            name: Some(test_name),
            ..Default::default()
        };
        for step in semantic_test.steps {
            let translated_step = match step {
                TestStep::FunctionCall(TestStepFunctionCall {
                    caller,
                    function,
                    value,
                    arguments,
                    expected_output: TestStepExpectations { output, events, .. },
                    comment,
                }) => {
                    let method = match function {
                        TestStepFunction::Constructor => Method::Deployer,
                        TestStepFunction::Fallback => Method::Fallback,
                        TestStepFunction::Function { signature } => {
                            Method::FunctionName(signature)
                        }
                    };

                    let calldata = Calldata::new_compound(
                        arguments.hex_strings_iterator(),
                    );

                    let expected = {
                        let mut expected = ExpectedOutput {
                            compiler_version: None,
                            return_data: (output.len() > 0).then(|| {
                                Calldata::new_compound(
                                    output.io_values().hex_strings_iterator(),
                                )
                            }),
                            events: None,
                            exception: output.is_failure(),
                        };

                        for event in events {
                            let mut translated_event = Event::default();
                            translated_event.address =
                                event.emitter.map(|value| value.to_string());

                            if let EventIdentifier::Known { signature } =
                                event.ident
                            {
                                translated_event.topics.push(
                                    keccak256(signature)
                                        .encode_hex_with_prefix(),
                                );
                            }

                            translated_event.topics.extend(
                                event.indexed_values.hex_strings_iterator(),
                            );

                            translated_event.values = Calldata::new_compound(
                                event.unindexed_values.hex_strings_iterator(),
                            );

                            expected
                                .events
                                .get_or_insert_default()
                                .push(translated_event);
                        }

                        expected
                    };

                    Step::FunctionCall(Box::new(Input {
                        caller,
                        comment: Some(comment),
                        instance: main_contract_instance.clone(),
                        method,
                        calldata,
                        expected: Some(Expected::Expected(expected)),
                        value: (value > U256::ZERO)
                            .then_some(EtherValue::new(value)),
                        storage: None,
                        variable_assignments: None,
                    }))
                }
                TestStep::BalanceAssertion(TestStepBalanceAssertion {
                    address,
                    amount,
                    comment,
                }) => Step::BalanceAssertion(Box::new(BalanceAssertion {
                    address: address
                        .map(|address| address.to_string())
                        .unwrap_or_else(|| {
                            format!(
                                "{}.address",
                                main_contract_instance.as_str()
                            )
                        }),
                    expected_balance: amount,
                    comment: Some(comment),
                })),
                TestStep::StorageEmptyAssertion(
                    TestStepStorageEmptyAssertion { is_empty, comment },
                ) => Step::StorageEmptyAssertion(Box::new(
                    StorageEmptyAssertion {
                        address: format!(
                            "{}.address",
                            main_contract_instance.as_str()
                        ),
                        is_storage_empty: is_empty,
                        comment: Some(comment),
                    },
                )),
            };
            case.steps.push(translated_step);
        }
        metadata.cases.push(case);

        // Handling the EVM version requirement.
        if let Some(evm_version_requirement) =
            semantic_test.configuration.evm_version
        {
            let requirement = match evm_version_requirement {
                EvmVersionRequirement::GreaterThan(version) => revive_dt_format::metadata::EvmVersionRequirement::new_greater_than(version.as_str().try_into()?),
                EvmVersionRequirement::GreaterThanOrEqual(version) => revive_dt_format::metadata::EvmVersionRequirement::new_greater_than_or_equals(version.as_str().try_into()?),
                EvmVersionRequirement::LessThan(version) => revive_dt_format::metadata::EvmVersionRequirement::new_less_than(version.as_str().try_into()?),
                EvmVersionRequirement::LessThanOrEqual(version) => revive_dt_format::metadata::EvmVersionRequirement::new_less_than_or_equals(version.as_str().try_into()?),
                EvmVersionRequirement::EqualTo(version) => revive_dt_format::metadata::EvmVersionRequirement::new_equals(version.as_str().try_into()?),
            };
            metadata.required_evm_version = Some(requirement);
        }

        let test_file = File::options()
            .write(true)
            .truncate(true)
            .create(true)
            .open(test_directory.join("test.json"))?;
        serde_json::to_writer_pretty(test_file, &metadata)?;
    }

    Ok(())
}

fn write_to_file_create_all_dirs(
    path: impl AsRef<Path>,
    contents: impl AsRef<[u8]>,
) -> Result<()> {
    if let Some(parent) = path.as_ref().parent() {
        create_dir_all(parent)?;
    }
    std::fs::write(path, contents).map_err(Into::into)
}
