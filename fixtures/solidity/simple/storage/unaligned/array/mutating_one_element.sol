//! {
//!   "cases": [
//!     {
//!       "name": "complex",
//!       "inputs": [
//!         {
//!           "method": "complex",
//!           "calldata": [],
//!           "storage": {
//!             "Test.address": [
//!               "1"
//!             ]
//!           },
//!           "caller": "0x9E51c0FAa2FDc51EC06f02b535da12F14d59aa85"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

// Report https://linear.app/matterlabs/issue/CPR-210/error-with-solidity-constants

pragma solidity >=0.4.16;

contract Test {
    uint8[1] KEY = [1];

    function complex() public view returns(uint8) {
        return KEY[0];
    }
}