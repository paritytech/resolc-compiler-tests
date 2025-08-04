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
//!           "caller": "0x08be46f20f310a94A179DebCCf6078F97c9A93E7"
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
//!           "caller": "0x7c0414263dC163635A01cF39D212D3Da877a63eE"
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
//!           "caller": "0x16039dB5eD4D1D7c285036eb171a1baF549F1952"
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