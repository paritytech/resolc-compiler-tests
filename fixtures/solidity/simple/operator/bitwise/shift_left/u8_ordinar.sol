//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42"
//!           ],
//!           "caller": "0x3bf958fa0626e898f548a8f95cf9ab3a4db65169"
//!         }
//!       ],
//!       "expected": [
//!         "168"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(uint8 a) public pure returns(uint8) {
        return a << 2;
    }
}
