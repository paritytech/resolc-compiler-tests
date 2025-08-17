//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "57896044618658097711785492504343953926634992332820282019728792003956564819968"
//!           ],
//!           "caller": "0x3bf958fa0626e898f548a8f95cf9ab3a4db65169"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(uint256 a) public pure returns(uint256) {
        return a >> 255;
    }
}
