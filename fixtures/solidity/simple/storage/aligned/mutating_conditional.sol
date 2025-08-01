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
//!           "caller": "0xB0C741A0D76E1F07fB613bB4AB310469cd152114"
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
//!           "caller": "0xA3258c7d453330c390474919261f63d7391D1B24"
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
//!           "caller": "0xf7E8A1C82341A79bCa90eD06cd33906a8F645372"
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
//!           "caller": "0xdC84664b12338C0F19E7D4d0e45abeCd8B8B5Da0"
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
    uint256 data;

    function main(bool gate_1, bool gate_2, uint8 value) public returns(uint8) {
        if (gate_1) {
            if (gate_2) {
                data = uint256(value);
            }
        }

        return uint8(data);
    }
}
