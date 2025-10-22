//! {
//!   "cases": [
//!     {
//!       "name": "zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0"
//!           ],
//!           "caller": "0x5ce162cfa6208d7c50a7cb3525ac126155e7bce4"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42"
//!           ],
//!           "caller": "0x2853dc9ca40d012969e25360cce0d9d326b24a86"
//!         }
//!       ],
//!       "expected": [
//!         "42"
//!       ]
//!     },
//!     {
//!       "name": "max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "127"
//!           ],
//!           "caller": "0x802271c02f76701929e1ea772e72783d28e4b60f"
//!         }
//!       ],
//!       "expected": [
//!         "127"
//!       ]
//!     },
//!     {
//!       "name": "overflow_positive_minimal",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "128"
//!           ],
//!           "caller": "0x7bd2aa0726ac3b9e752b120de8568e90b0423ae4"
//!         }
//!       ],
//!       "expected": [
//!         "-128"
//!       ]
//!     },
//!     {
//!       "name": "overflow_positive",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1000"
//!           ],
//!           "caller": "0xb540c05d9b2516da9596a5ee75d750717a4be035"
//!         }
//!       ],
//!       "expected": [
//!         "-24"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(uint16 a) public pure returns(int8) {
        return int8(int16(a));
    }
}
