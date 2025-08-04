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
//!           "caller": "0x92aa3a6CA39990424C2209E547240a42e68825CF"
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
//!           "caller": "0xA2A433e538c34CFb44bBA773B16d4B7a5b5f731D"
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
//!           "caller": "0xDB43A104e51144F46755911f818FF301BCaf0D23"
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
//!           "caller": "0x85c66c1287d4eCEAc754236423171534d545BdF8"
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
