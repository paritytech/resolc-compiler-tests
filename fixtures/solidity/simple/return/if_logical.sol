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
//!           "caller": "0xb6dFD9Af1532219ea24eA5f80CF751A30655C82E"
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
//!           "caller": "0x1afd217A96d553219A0260c7EDB463aC39a978c0"
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
//!           "caller": "0x4f7509c6e88c7696a5705D58565d5E930bA4b37a"
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
//!           "caller": "0xCA9d9c6b2f10Ad240b37B6e9b217DDA51a6b9Eaf"
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
