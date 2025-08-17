//! {
//!   "cases": [
//!     {
//!       "name": "ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42"
//!           ],
//!           "caller": "0x5fe015779fb36006b01f9c5a5dbcaa6ffa56f0c0"
//!         }
//!       ],
//!       "expected": [
//!         "213"
//!       ]
//!     },
//!     {
//!       "name": "min_to_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0"
//!           ],
//!           "caller": "0x28b6e15f86025b8ea8beaa6855a81069bfb6ab1e"
//!         }
//!       ],
//!       "expected": [
//!         "255"
//!       ]
//!     },
//!     {
//!       "name": "max_to_min",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "255"
//!           ],
//!           "caller": "0x271d65af9a5a7b4cd7af264f251184c2a4b9e7a3"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(uint8 a) public pure returns(uint8) {
        return ~a;
    }
}
