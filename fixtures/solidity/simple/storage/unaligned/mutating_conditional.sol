//! {
//!   "cases": [
//!     {
//!       "name": "false_false",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "0",
//!             "25"
//!           ],
//!           "storage": {
//!             "Test.address": [
//!               "42"
//!             ]
//!           },
//!           "caller": "0x9D47E5f6AD5E4c7785E2Af8780aFa1DC5Ab00471"
//!         }
//!       ],
//!       "expected": [
//!         "42"
//!       ]
//!     },
//!     {
//!       "name": "false_true",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "1",
//!             "25"
//!           ],
//!           "storage": {
//!             "Test.address": [
//!               "42"
//!             ]
//!           },
//!           "caller": "0x34C5111502b7530e88D49956a36727cb226Ae68f"
//!         }
//!       ],
//!       "expected": [
//!         "42"
//!       ]
//!     },
//!     {
//!       "name": "true_false",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "0",
//!             "25"
//!           ],
//!           "storage": {
//!             "Test.address": [
//!               "42"
//!             ]
//!           },
//!           "caller": "0x6042d74A084d16b75844b015b95233fEB068DDd0"
//!         }
//!       ],
//!       "expected": [
//!         "42"
//!       ]
//!     },
//!     {
//!       "name": "true_true",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "1",
//!             "25"
//!           ],
//!           "storage": {
//!             "Test.address": [
//!               "42"
//!             ]
//!           },
//!           "caller": "0xF8a9B6e7332965ddDbF5FA13466f07e153304799"
//!         }
//!       ],
//!       "expected": [
//!         "25"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    uint8 data;

    function main(bool gate_1, bool gate_2, uint8 value) public returns(uint8) {
        if (gate_1) {
            if (gate_2) {
                data = value;
            }
        }

        return data;
    }
}
