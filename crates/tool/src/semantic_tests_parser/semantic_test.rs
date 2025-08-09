//! Contains the model definitions for a parsed Solidity semantic tests. This
//! format can then be translated into the MatterLabs test format or acted upon
//! in any way that fits.

#![allow(dead_code)]

use std::{collections::HashMap, path::PathBuf};

use alloy::{
    hex,
    primitives::{Address, FixedBytes, I256, U256},
};

use super::test_configuration::TestConfiguration;

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

    /// This is the identifier of the main contract that the Solidity semantic
    /// test is calling into. This is always the final contract present in the
    /// semantic test file. No calls in the semantic tests happen to any other
    /// contract other than the main contract in the test files.
    pub main_contract_ident: String,

    /// The set of steps that are executed in this semantic test alongside their
    /// callers, method names, expectations, and everything else required to
    /// make the call.
    pub steps: Vec<TestStep>,

    /// The set of configurations that should be adhered for the semantic test
    /// which contains certain filters and certain compilations options and
    /// requirements for the test case.
    pub configuration: TestConfiguration,
}

/// Defines a test step found in the solidity semantic tests. This is equivalent
/// to a test input from the MatterLabs test format.
#[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
pub struct TestStep {
    /// The address of caller into the method for this test step. If this is not
    /// defined then the caller is assumed to be the [`DEFAULT_CALLER`].
    ///
    /// [`DEFAULT_CALLER`]: TestStep::DEFAULT_CALLER
    pub caller: Option<Address>,

    /// This is the function being called in this test step.
    pub function: TestStepFunction,

    /// This is the set of arguments that the function should be invoked with.
    pub arguments: Vec<IOValue>,

    /// This is the expected outcome of the function call, which can either be
    /// a success with some output or a failure with some failure reason.
    pub expected_output: TestStepExpectedOutput,
}

impl TestStep {
    pub const DEFAULT_CALLER: Address = Address(FixedBytes(hex!(
        "0x1212121212121212121212121212120000000012"
    )));
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
#[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
pub struct TestStepExpectations {
    /// The expected output that the test step should have and whether it should
    /// succeed or fail.
    pub output: Option<TestStepExpectedOutput>,

    /// The expected gas consumption of the test step.
    pub gas: TestStepGasExpectations,

    /// The expected events that should be emitted when the test step is called.
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

/// This describes the expected gas consumption of the test step
#[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
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

/// This enum represents the possible set of IO Values which are the values seen
/// in the input and output of functions.
#[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
pub enum IOValue {
    /// Represents an unsigned 256 bit integer.
    UnsignedNumber(U256),

    /// Represents a signed 256 bit integer.
    SignedNumber(I256),

    /// Represents a boolean.
    Boolean(bool),

    /// Represents a string that was contained in quotes with the quotes removed
    /// from it.
    String(String),
}
