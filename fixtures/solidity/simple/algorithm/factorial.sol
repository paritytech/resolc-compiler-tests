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
//!           "caller": "0x5a5cFF1abf894590947D9433FCD0f0a8B7A8897a"
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
//!           "caller": "0x4191a58E13a0DC4Cc77a08b16835d8bB4e570c72"
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
//!           "caller": "0xf5C19B1E220F294ebe8534CC5F3EF53a8B103ac8"
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