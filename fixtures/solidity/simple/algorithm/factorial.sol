//! {
//!   "cases": [
//!     {
//!       "name": "one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "5"
//!           ],
//!           "caller": "0x09ee1b945a2b4e96770f03bb9fc56279428d9c67"
//!         }
//!       ],
//!       "expected": [
//!         "120"
//!       ]
//!     },
//!     {
//!       "name": "two",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "6"
//!           ],
//!           "caller": "0x6fa32800c411db2a2d9dfa7abc8284559a15f945"
//!         }
//!       ],
//!       "expected": [
//!         "720"
//!       ]
//!     },
//!     {
//!       "name": "three",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "7"
//!           ],
//!           "caller": "0x8477f22155e425badd49ec9c3edfac9614c3e0a6"
//!         }
//!       ],
//!       "expected": [
//!         "5040"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(uint8 n) public pure returns(uint64) {
        uint64 fact = 1;
        for(uint8 i = 1; i <= n; i++) {
            fact *= i;
        }
        return fact;
    }
}