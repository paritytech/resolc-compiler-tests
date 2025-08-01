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
//!           "caller": "0x3C4EFC32B4333865D9112799f577CF9132Ee7cF9"
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
