//! {
//!   "cases": [
//!     {
//!       "name": "entry1",
//!       "inputs": [
//!         {
//!           "method": "entry",
//!           "calldata": [
//!             "0",
//!             "0"
//!           ],
//!           "caller": "0x206a5eab68c532210724d8acfe5e2e46640f67b0"
//!         }
//!       ],
//!       "expected": [
//!         "4"
//!       ]
//!     },
//!     {
//!       "name": "false_true",
//!       "inputs": [
//!         {
//!           "method": "entry",
//!           "calldata": [
//!             "0",
//!             "1"
//!           ],
//!           "caller": "0xf887e8a0e9a7bbd7b952b30820a4d238e425cd1a"
//!         }
//!       ],
//!       "expected": [
//!         "8"
//!       ]
//!     },
//!     {
//!       "name": "true_false",
//!       "inputs": [
//!         {
//!           "method": "entry",
//!           "calldata": [
//!             "1",
//!             "0"
//!           ],
//!           "caller": "0x74581ce41d258a41f7be65f5b5dcea7d15e69b4a"
//!         }
//!       ],
//!       "expected": [
//!         "8"
//!       ]
//!     },
//!     {
//!       "name": "true_true",
//!       "inputs": [
//!         {
//!           "method": "entry",
//!           "calldata": [
//!             "1",
//!             "1"
//!           ],
//!           "caller": "0x9258330e6fef78001a09657242eb33cc3cdbda3e"
//!         }
//!       ],
//!       "expected": [
//!         "4"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function entry(bool first, bool second) public pure returns(uint8) {
        uint8 result = 1;

        if (first || second) {
            result <<= 1;
        }

        if (first != second) {
            result <<= 1;
        }

        if (first && second) {
            result <<= 1;
        }

        if (!first) {
            result <<= 1;
        }

        if (!second) {
            result <<= 1;
        }

        return result;
    }
}
