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
//!           "caller": "0x87098e5dbd9b3bee158638a241018d1c42307c90"
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
//!           "caller": "0x7ba14f1a1ecf92b0711dc950fd2d3779ba3d570b"
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
//!           "caller": "0x09ee1b945a2b4e96770f03bb9fc56279428d9c67"
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