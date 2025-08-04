//! {
//!   "cases": [
//!     {
//!       "name": "remainder_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "15"
//!           ],
//!           "caller": "0xa5D4cB56b2A6cf1315642509407D4B6Bd7eB3e71"
//!         }
//!       ],
//!       "expected": [
//!         "5"
//!       ]
//!     },
//!     {
//!       "name": "remainder_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "22"
//!           ],
//!           "caller": "0x97837F9Ee0dBdE58D8A10ee31b8bFF43c06fFB81"
//!         }
//!       ],
//!       "expected": [
//!         "7"
//!       ]
//!     },
//!     {
//!       "name": "remainder_two",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "26"
//!           ],
//!           "caller": "0x093f4A00f8F9E14501d7F56944495aD3482B7B88"
//!         }
//!       ],
//!       "expected": [
//!         "8"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    uint32 constant CONST = 3;

    function main(uint32 witness) public pure returns(uint32) {
        return witness / CONST;
    }
}
