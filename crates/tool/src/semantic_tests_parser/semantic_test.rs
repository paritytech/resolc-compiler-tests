//! Contains the model definitions for a parsed Solidity semantic tests. This
//! format can then be translated into the MatterLabs test format or acted upon
//! in any way that fits.

#![allow(dead_code)]

use std::{
    collections::{HashMap, HashSet},
    fmt::Display,
    fs::read_to_string,
    path::{Path, PathBuf},
    str::FromStr,
};

use alloy::{
    hex::ToHexExt,
    primitives::{Address, B256, FixedBytes, U256, address},
};
use anyhow::{Context, Error, Result, bail};
use revive_dt_common::define_wrapper_type;

use super::function_section_parser::*;
use super::section::*;
use super::test_configuration::*;

/// The main model that describes the solidity semantic test.
///
/// This set of models can be thought of as an IR of sorts that is high-level
/// enough and can be more easily translated into the ML test format.
#[derive(Clone, Debug)]
pub struct SemanticTest {
    /// The path of the original solidity semantic test. This may be used for
    /// path resolution against this canonical path of the semantic test.
    pub path: PathBuf,

    /// This contains all of the contract sources that are contained in the
    /// semantic test alongside the source code associated with these paths.
    ///
    /// Note that some of these paths are missing the `.sol` extension and that
    /// this should be added later on when appropriate or when the test is being
    /// processed.
    ///
    /// Note that this contains both the code from the sources section and the
    /// external sources section which means that they're all treated in the
    /// same way.
    pub sources: HashMap<PathBuf, String>,

    /// The set of library paths and their associated names to be used in the
    /// tests.
    pub libraries: HashMap<PathBuf, HashSet<String>>,

    /// This is the identifier of the main contract that the Solidity semantic
    /// test is calling into. This is always the final contract present in the
    /// semantic test file. No calls in the semantic tests happen to any other
    /// contract other than the main contract in the test files.
    pub main_contract_ident: String,

    /// This is the path of the source of  the main contract that the solidity
    /// semantic test is calling into.
    pub main_contract_source_path: PathBuf,

    /// The set of steps that are executed in this semantic test alongside their
    /// callers, method names, expectations, and everything else required to
    /// make the call.
    pub steps: Vec<TestStep>,

    /// The set of configurations that should be adhered for the semantic test
    /// which contains certain filters and certain compilations options and
    /// requirements for the test case.
    pub configuration: TestConfiguration,
}

/// Defines test step in the solidity semantic tests.
#[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
pub enum TestStep {
    FunctionCall(TestStepFunctionCall),
    BalanceAssertion(TestStepBalanceAssertion),
    StorageEmptyAssertion(TestStepStorageEmptyAssertion),
}

/// Defines a function call step found in the solidity semantic tests. This is
/// equivalent to a test input from the MatterLabs test format.
#[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
pub struct TestStepFunctionCall {
    /// The address of caller into the method for this test step. If this is not
    /// defined then the caller is assumed to be the [`DEFAULT_CALLER`].
    ///
    /// [`DEFAULT_CALLER`]: TestStep::DEFAULT_CALLER
    pub caller: Address,

    /// An optional comment on the item.
    pub comment: String,

    /// This is the function being called in this test step.
    pub function: TestStepFunction,

    /// The amount of wei that the function should be provided with when called.
    /// Again, this is denominated in wei.
    pub value: U256,

    /// This is the set of arguments that the function should be invoked with.
    pub arguments: Vec<IOValue>,

    /// This is the expected outcome of the function call, which can either be
    /// a success with some output or a failure with some failure reason.
    pub expected_output: TestStepExpectations,
}

impl TestStepFunctionCall {
    pub const DEFAULT_CALLER: Address =
        address!("0x1212121212121212121212121212120000000012");
}

#[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
/// An enum of all of the possible functions that the test step can call.
pub enum TestStepFunction {
    /// This represents a call to the constructor of the main smart contract or
    /// essentially the deployer function.
    Constructor,
    /// This represents a call to the fallback function of the main contract.
    Fallback,
    /// This represents a call to a named function of the main contract. The
    /// function will be specified through a signature string.
    Function { signature: String },
}

/// This describes the expectations from the test step.
#[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord, Hash, Default)]
pub struct TestStepExpectations {
    /// The expected output that the test step should have and whether it should
    /// succeed or fail.
    pub output: TestStepExpectedOutput,

    /// The expected gas consumption of the test step.
    pub gas: TestStepGasExpectations,

    /// The expected events that would be emitted from this function call.
    pub events: Vec<TestStepExpectedEvent>,
}

#[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
pub enum TestStepExpectedOutput {
    /// This case means that the test steps is expected to succeed and the
    /// output values are provided in the vector of [`IOValue`]s.
    Success { output: Vec<IOValue> },

    /// This case means that the test steps is expected to fail and the failure
    /// reason is provided in the vector of [`IOValue`]s
    Failure { failure_reason: Vec<IOValue> },
}

impl TestStepExpectedOutput {
    fn with_value(self, value: Value) -> Result<Self> {
        match value {
            v @ (Value::UnsignedNumber(_)
            | Value::SignedNumber(_)
            | Value::Boolean(_)
            | Value::String(_)
            | Value::HexString(_)
            | Value::RightAlignedValue(_)
            | Value::LeftAlignedValue(_)) => {
                v.try_into().map(|value| self.with_io_value(value))
            }
            Value::Failure(_) => match self {
                Self::Failure {
                    failure_reason: values,
                }
                | Self::Success { output: values } => Ok(Self::Failure {
                    failure_reason: values,
                }),
            },
        }
    }

    fn with_io_value(self, value: IOValue) -> Self {
        match self {
            TestStepExpectedOutput::Success { mut output } => {
                output.push(value);
                Self::Success { output }
            }
            TestStepExpectedOutput::Failure { mut failure_reason } => {
                failure_reason.push(value);
                Self::Failure { failure_reason }
            }
        }
    }

    pub fn io_values_iterator(&self) -> impl Iterator<Item = &IOValue> {
        let values = match self {
            TestStepExpectedOutput::Success { output } => output,
            TestStepExpectedOutput::Failure { failure_reason } => {
                failure_reason
            }
        };
        values.iter()
    }

    pub fn is_success(&self) -> bool {
        matches!(self, Self::Success { .. })
    }

    pub fn is_failure(&self) -> bool {
        matches!(self, Self::Failure { .. })
    }

    pub fn len(&self) -> usize {
        match self {
            TestStepExpectedOutput::Success { output } => output.len(),
            TestStepExpectedOutput::Failure { failure_reason } => {
                failure_reason.len()
            }
        }
    }
}

impl Default for TestStepExpectedOutput {
    fn default() -> Self {
        Self::Success {
            output: Default::default(),
        }
    }
}

/// This describes the expected gas consumption of the test step
#[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord, Hash, Default)]
pub struct TestStepGasExpectations {
    /// This is the expected gas for legacy execution
    pub legacy: Option<u64>,
    /// This is the expected gas for legacy code deposit gas
    pub legacy_code: Option<u64>,
    /// This is the expected gas for ir optimized execution
    pub ir_optimized: Option<u64>,
    /// This is the expected gas for it optimized code deposit gas
    pub ir_optimized_code: Option<u64>,
    /// This is the expected gas for legacy optimized execution
    pub legacy_optimized: Option<u64>,
    /// This is the expected gas for legacy optimized code deposit gas
    pub legacy_optimized_code: Option<u64>,
}

/// The expected events that should be emitted when the test step is called.
#[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
pub struct TestStepExpectedEvent {
    /// The expected emitter of the event.
    pub emitter: Option<Address>,

    /// The identifier of the emitted event.
    pub ident: EventIdentifier,

    /// The set of indexed values to expect the event to have emitted.
    pub indexed_values: Vec<IOValue>,

    /// The set of unindexed values to expect the event to have emitted.
    pub unindexed_values: Vec<IOValue>,
}

/// Represents the identifier of the event that was emitted. This could either
/// be anonymous or it could be a known event whose signature is provided.
#[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
pub enum EventIdentifier {
    Anonymous,
    Known { signature: String },
}

/// Represents a balance assertion step in the test case.
#[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
pub struct TestStepBalanceAssertion {
    /// An optional comment on the item.
    pub comment: String,

    /// The address that the balance assertion is happening on. If this is not
    /// defined then it means that the assertion should be done on the main
    /// contract of the file.
    pub address: Option<Address>,

    /// The balance amount to assert that the account or contract has.
    pub amount: U256,
}

/// Represents an assertion for the contents of the storage.
#[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
pub struct TestStepStorageEmptyAssertion {
    /// An optional comment on the item.
    pub comment: String,

    /// A boolean of whether the storage is empty or not.
    pub is_empty: bool,
}

define_wrapper_type! {
    /// Represents a word that can be encountered in the input or output of
    /// functions and events in the semantic tests.
    #[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
    pub struct IOValue(B256);
}

impl Display for IOValue {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        write!(
            f,
            "0x{}",
            self.0
                .iter()
                .skip_while(|value| value == &&0)
                .copied()
                .collect::<Vec<_>>()
                .encode_hex()
        )
    }
}

impl TryFrom<Value> for IOValue {
    type Error = Error;

    fn try_from(value: Value) -> std::result::Result<Self, Self::Error> {
        let value = match value {
            Value::UnsignedNumber(value)
            | Value::RightAlignedValue(RightAlignedValue {
                value: AlignmentAllowedValue::UnsignedNumber(value),
                ..
            }) => value,
            Value::SignedNumber(value)
            | Value::RightAlignedValue(RightAlignedValue {
                value: AlignmentAllowedValue::SignedNumber(value),
                ..
            }) => U256::from_be_bytes(value.to_be_bytes::<32>()),
            Value::Boolean(Boolean::True(..))
            | Value::RightAlignedValue(RightAlignedValue {
                value: AlignmentAllowedValue::Boolean(Boolean::True(..)),
                ..
            }) => U256::ONE,
            Value::Boolean(Boolean::False(..))
            | Value::RightAlignedValue(RightAlignedValue {
                value: AlignmentAllowedValue::Boolean(Boolean::False(..)),
                ..
            }) => U256::ZERO,
            Value::String(value) => {
                let value = unescape_string(value.as_str())?;
                U256::from_be_slice(value.as_slice())
            }
            Value::HexString(value) => {
                U256::from_str_radix(&value.hex.replace("_", ""), 16)?
            }
            Value::LeftAlignedValue(LeftAlignedValue {
                value: AlignmentAllowedValue::Boolean(Boolean::True(_)),
                ..
            }) => handle_alignment(U256::ONE, Alignment::Left),
            Value::LeftAlignedValue(LeftAlignedValue {
                value: AlignmentAllowedValue::Boolean(Boolean::False(_)),
                ..
            }) => handle_alignment(U256::ZERO, Alignment::Left),
            Value::LeftAlignedValue(LeftAlignedValue {
                value: AlignmentAllowedValue::SignedNumber(value),
                ..
            }) => handle_alignment(
                U256::from_be_bytes(value.to_be_bytes::<32>()),
                Alignment::Left,
            ),
            Value::LeftAlignedValue(LeftAlignedValue {
                value: AlignmentAllowedValue::UnsignedNumber(value),
                ..
            }) => handle_alignment(value, Alignment::Left),
            Value::Failure(..) => {
                bail!("Failure token can not be converted into an IO value")
            }
        };
        Ok(Self(value.to_be_bytes::<32>().into()))
    }
}

impl SemanticTest {
    /// Parses the given semantic test file and translates it into the higher
    /// level [`SemanticTest`] object which can then be used anywhere or
    /// translated into the MatterLabs format.
    pub fn from_semantic_test_file(
        path: impl AsRef<Path>,
    ) -> Result<Option<Self>> {
        let semantic_test_path = path.as_ref().canonicalize()?;
        let semantic_test_file_name = semantic_test_path
            .file_name()
            .context("No file name found for semantic test")
            .map(PathBuf::from)?;
        let semantic_test_parent_directory = semantic_test_path
            .parent()
            .context("No parent directory found for semantic test")?;
        let semantic_test_file_content = read_to_string(&semantic_test_path)?;

        let sections = SemanticTestSections::parse_source_into_sections(
            semantic_test_file_content.as_str(),
        )?;

        // If there's no test section then we throw it out since there's no
        // tests to parse.
        if !sections.iter().any(|section| {
            matches!(section, SemanticTestSection::TestInputs { .. })
        }) {
            return Ok(None);
        }

        let path = semantic_test_path.to_path_buf();
        let mut sources = HashMap::<PathBuf, String>::new();
        let mut libraries = HashMap::<PathBuf, HashSet<String>>::new();
        let (main_contract_source_path, main_contract_ident) = sections
            .main_contract_ident_and_path()
            .context("No main contract found in the Solidity semantic test")?;
        let main_contract_source_path = main_contract_source_path
            .unwrap_or(&semantic_test_path)
            .to_path_buf();
        let mut steps = Vec::<TestStep>::new();
        let mut configuration = TestConfiguration::new();

        let mut caller = TestStepFunctionCall::DEFAULT_CALLER;

        for section in sections.into_inner().into_iter() {
            match section {
                SemanticTestSection::SourceCode { file_name, content } => {
                    let file_name = file_name
                        .unwrap_or_else(|| semantic_test_file_name.clone());
                    sources.insert(file_name, content);
                }
                SemanticTestSection::ExternalSource { path, .. } => {
                    let path = semantic_test_parent_directory.join(path).canonicalize().context("Failed to canonicalize the path to an external source")?;
                    let content = read_to_string(&path)?;
                    sources.insert(path.clone(), content);
                }
                SemanticTestSection::TestConfiguration {
                    configuration: new,
                } => {
                    configuration = new;
                }
                SemanticTestSection::TestInputs { lines } => {
                    let nodes = Document::from_str(lines.join("\n").as_str())?;
                    for DocumentItem { node, line } in
                        nodes.into_inner().into_iter()
                    {
                        match node {
                            Node::CallerSwitch(CallerSwitchNode {
                                account_address,
                                ..
                            }) => {
                                caller = Address::from_word(FixedBytes(
                                    account_address.to_be_bytes::<32>(),
                                ));
                            }
                            Node::LibraryDeclaration(
                                LibraryDeclarationNode {
                                    path, identifier, ..
                                },
                            ) => {
                                let path = path
                                    .map(|(path, ..)| path.into_inner())
                                    .map(PathBuf::from)
                                    .unwrap_or_else(|| {
                                        semantic_test_path.clone()
                                    });
                                libraries
                                    .entry(path)
                                    .or_default()
                                    .insert(identifier.into_inner());
                            }
                            Node::StorageEmptyAssertion(
                                StorageEmptyAssertionNode { is_empty, .. },
                            ) => {
                                let is_empty = is_empty != U256::ZERO;
                                steps.push(TestStep::StorageEmptyAssertion(
                                    TestStepStorageEmptyAssertion {
                                        is_empty,
                                        comment: line,
                                    },
                                ));
                            }
                            Node::BalanceAssertion(BalanceAssertionNode {
                                account_address,
                                balance_amount: amount,
                                ..
                            }) => {
                                let address = account_address
                                    .map(|(_, address)| address)
                                    .map(|address| {
                                        Address::from_word(FixedBytes(
                                            address.to_be_bytes::<32>(),
                                        ))
                                    });
                                steps.push(TestStep::BalanceAssertion(
                                    TestStepBalanceAssertion {
                                        address,
                                        amount,
                                        comment: line,
                                    },
                                ))
                            }
                            Node::GasAssertion(GasAssertionNode {
                                compilation_mode,
                                code,
                                amount,
                                ..
                            }) => {
                                let Some(TestStep::FunctionCall(
                                    TestStepFunctionCall {
                                        expected_output,
                                        comment,
                                        ..
                                    },
                                )) = steps.iter_mut().rev().find(|step| {
                                    matches!(step, TestStep::FunctionCall(..))
                                })
                                else {
                                    bail!(
                                        "Encountered a gas assertion without any prior function call"
                                    )
                                };

                                comment.push_str("; ");
                                comment.push_str(line.as_str());

                                let amount = u64::try_from(amount).context(
                                    "Failed to convert gas amount to a u64",
                                )?;

                                match (compilation_mode, code) {
                                    (CompilationMode::Legacy(_), None) => {
                                        expected_output.gas.legacy =
                                            amount.into();
                                    }
                                    (CompilationMode::Legacy(_), Some(_)) => {
                                        expected_output.gas.legacy_code =
                                            amount.into();
                                    }
                                    (CompilationMode::IrOptimized(_), None) => {
                                        expected_output.gas.ir_optimized =
                                            amount.into();
                                    }
                                    (
                                        CompilationMode::IrOptimized(_),
                                        Some(_),
                                    ) => {
                                        expected_output.gas.ir_optimized_code =
                                            amount.into();
                                    }
                                    (
                                        CompilationMode::LegacyOptimized(_),
                                        None,
                                    ) => {
                                        expected_output.gas.legacy_optimized =
                                            amount.into();
                                    }
                                    (
                                        CompilationMode::LegacyOptimized(_),
                                        Some(_),
                                    ) => {
                                        expected_output
                                            .gas
                                            .legacy_optimized_code =
                                            amount.into();
                                    }
                                }
                            }
                            Node::EventAssertion(EventAssertionNode {
                                signature,
                                emitter,
                                values,
                                ..
                            }) => {
                                let Some(TestStep::FunctionCall(
                                    TestStepFunctionCall {
                                        expected_output,
                                        comment,
                                        ..
                                    },
                                )) = steps.iter_mut().rev().find(|step| {
                                    matches!(step, TestStep::FunctionCall(..))
                                })
                                else {
                                    bail!(
                                        "Encountered an emitted event assertion without any prior function call"
                                    )
                                };

                                comment.push_str("; ");
                                comment.push_str(line.as_str());

                                let signature = match signature {
                                    EventSignature::Signature(signature) => {
                                        EventIdentifier::Known {
                                            signature: signature.to_string(),
                                        }
                                    }
                                    EventSignature::Anonymous(..) => {
                                        EventIdentifier::Anonymous
                                    }
                                };
                                let emitter = emitter
                                    .map(|(_, address)| address)
                                    .map(|address| {
                                        Address::from_word(FixedBytes(
                                            address.to_be_bytes::<32>(),
                                        ))
                                    });
                                let mut event_assertion =
                                    TestStepExpectedEvent {
                                        emitter,
                                        ident: signature,
                                        indexed_values: Default::default(),
                                        unindexed_values: Default::default(),
                                    };

                                for value in values.into_iter().flat_map(
                                    |(_, values)| values.0.into_boxed_slice(),
                                ) {
                                    match value {
                                        EventValue::Indexed(
                                            IndexedEventValue { value, .. },
                                        ) => {
                                            event_assertion
                                                .indexed_values
                                                .push(value.try_into()?);
                                        }
                                        EventValue::Unindexed(value) => {
                                            event_assertion
                                                .unindexed_values
                                                .push(value.try_into()?);
                                        }
                                    }
                                }

                                expected_output.events.push(event_assertion);
                            }
                            Node::FunctionCall(FunctionCallNode {
                                signature,
                                ether_value,
                                arguments,
                                returns,
                            }) => {
                                let signature = match signature
                                    .ident
                                    .as_ref()
                                    .map(|ident| ident.as_str())
                                {
                                    None => TestStepFunction::Fallback,
                                    Some("constructor") => {
                                        TestStepFunction::Constructor
                                    }
                                    Some(_) => TestStepFunction::Function {
                                        signature: signature.to_string(),
                                    },
                                };
                                let value = match ether_value
                                    .map(|(_, value)| value)
                                {
                                    Some(EtherValue {
                                        amount,
                                        denomination:
                                            EtherValueDenomination::Wei(_),
                                    }) => amount,
                                    Some(EtherValue {
                                        amount,
                                        denomination:
                                            EtherValueDenomination::Gwei(_),
                                    }) => amount * U256::from(10u64.pow(9)),
                                    Some(EtherValue {
                                        amount,
                                        denomination:
                                            EtherValueDenomination::Ether(_),
                                    }) => amount * U256::from(10u64.pow(18)),
                                    None => U256::ZERO,
                                };

                                let mut function = TestStepFunctionCall {
                                    caller,
                                    function: signature,
                                    value,
                                    arguments: Default::default(),
                                    expected_output: Default::default(),
                                    comment: line,
                                };

                                for argument in arguments
                                    .into_iter()
                                    .flat_map(|(_, args)| args.0.into_iter())
                                {
                                    function
                                        .arguments
                                        .push(argument.try_into()?);
                                }

                                function.expected_output.output = returns
                                    .into_iter()
                                    .flat_map(|(_, returns)| {
                                        returns.0.into_iter()
                                    })
                                    .try_fold(
                                        TestStepExpectedOutput::default(),
                                        TestStepExpectedOutput::with_value,
                                    )?;

                                steps.push(TestStep::FunctionCall(function));
                            }
                        }
                    }
                }
            }
        }

        Ok(Some(Self {
            path,
            sources,
            libraries,
            main_contract_ident,
            main_contract_source_path,
            steps,
            configuration,
        }))
    }
}

#[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
enum Alignment {
    Left,
    Right,
}

fn handle_alignment(value: U256, alignment: Alignment) -> U256 {
    match alignment {
        Alignment::Right => value,
        Alignment::Left => {
            let compact_bytes = value.to_be_bytes_trimmed_vec();
            let mut result = [0u8; 32];
            result[..compact_bytes.len()].copy_from_slice(&compact_bytes);
            U256::from_be_bytes(result)
        }
    }
}

fn unescape_string(str: &str) -> Result<Vec<u8>> {
    fn hex_val(b: u8) -> Option<u8> {
        match b {
            b'0'..=b'9' => Some(b - b'0'),
            b'a'..=b'f' => Some(10 + (b - b'a')),
            b'A'..=b'F' => Some(10 + (b - b'A')),
            _ => None,
        }
    }

    let mut out: Vec<u8> = Vec::with_capacity(str.len());
    let mut it = str.as_bytes().iter().copied();
    while let Some(b) = it.next() {
        if b != b'\\' {
            out.push(b);
            continue;
        }
        let Some(esc) = it.next() else {
            bail!("Trailing backslash in escape sequence");
        };
        match esc {
            b'n' => out.push(b'\n'),
            b'r' => out.push(b'\r'),
            b't' => out.push(b'\t'),
            b'0' => out.push(0),
            b'\\' => out.push(b'\\'),
            b'"' => out.push(b'"'),
            b'\'' => out.push(b'\''),
            b'a' => out.push(0x07),
            b'b' => out.push(0x08),
            b'f' => out.push(0x0C),
            b'v' => out.push(0x0B),
            b'x' => {
                let Some(h1b) = it.next() else {
                    bail!("Invalid hex escape: expected two digits after \\x");
                };
                let Some(h2b) = it.next() else {
                    bail!("Invalid hex escape: expected two digits after \\x");
                };
                let h1 =
                    hex_val(h1b).context("Invalid hex digit in \\x escape")?;
                let h2 =
                    hex_val(h2b).context("Invalid hex digit in \\x escape")?;
                out.push((h1 << 4) | h2);
            }
            other => bail!("Unsupported escape sequence: \\{}", other as char),
        }
    }
    Ok(out)
}

#[cfg(test)]
mod tests {
    use revive_dt_common::iterators::*;

    use alloy::primitives::uint;

    use super::*;

    #[test]
    fn test_align_left() {
        // Arrange
        let value = uint!(0xab_cd_U256);

        // Act
        let aligned = handle_alignment(value, Alignment::Left);

        // Assert
        let mut expected_bytes = [0u8; 32];
        expected_bytes[0] = 0xab;
        expected_bytes[1] = 0xcd;
        let expected = U256::from_be_bytes(expected_bytes);
        assert_eq!(aligned, expected);
    }

    #[test]
    fn test_zero_round_trip() {
        // Arrange
        let zero = U256::ZERO;

        // Act
        let rtn = handle_alignment(zero, Alignment::Left);

        // Assert
        assert_eq!(rtn, zero);
    }

    #[test]
    fn all_semantic_tests_can_be_parsed_to_structured_object() {
        // Arrange
        let path = "../../fixtures/solidity/ethereum";
        let paths =
            FilesWithExtensionIterator::new(path).with_allowed_extension("sol");

        for path in paths {
            // Act
            let semantic_test = SemanticTest::from_semantic_test_file(&path);

            // Assert
            let test = match semantic_test {
                Ok(Some(test)) => test,
                Ok(None) => continue,
                Err(error) => {
                    panic!("Parsing {} failed with {}", path.display(), error)
                }
            };
            println!("✅ Succeeded {}", path.display());
            println!("{test:#?}");
        }
    }
}
