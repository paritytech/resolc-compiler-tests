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
//!           "caller": "0xDd1A4ec32b109dCe6AC09B85Ed8Fc3F6f9F3e3bf"
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
//!           "caller": "0x2fFFf4d43C78Bcc18C88eF353C8F666e16395352"
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
//!           "caller": "0xCE3A0709d0674eD5160186deC462f72B852cD14C"
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
//!           "caller": "0x9b0fFE89DD9C0100f45b20E59cA8A40EC2E0ca38"
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
