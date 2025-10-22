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
//!           "caller": "0x8b7421b86d9ff375f13416fbb57956d63504fde9"
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
//!           "caller": "0xd1a0da208fde814c052222fbe9a0acc5f077b7a0"
//!         }
//!       ],
//!       "expected": [
//!         "-42"
//!       ]
//!     },
//!     {
//!       "name": "max_to_min",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "127"
//!           ],
//!           "caller": "0x15d74e175bc8274fa58780f874e00dd8ff600be3"
//!         }
//!       ],
//!       "expected": [
//!         "-127"
//!       ]
//!     },
//!     {
//!       "name": "overflow",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "200"
//!           ],
//!           "caller": "0xced1b0433c1347a750e2035a26ebdbd798992fe7"
//!         }
//!       ],
//!       "expected": [
//!         "56"
//!       ]
//!     },
//!     {
//!       "name": "overflow_minimal",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "129"
//!           ],
//!           "caller": "0x92090bf29a3ea122c5f26777e2803a8fd6f1134e"
//!         }
//!       ],
//!       "expected": [
//!         "127"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(uint8 a) public pure returns(int8) {
        return -int8(a);
    }
}
