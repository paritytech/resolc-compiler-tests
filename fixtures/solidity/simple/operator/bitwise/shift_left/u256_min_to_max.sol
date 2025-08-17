//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1"
//!           ],
//!           "caller": "0x7e9961fa09dd52f945f8143844785cf0e51bb4ce"
//!         }
//!       ],
//!       "expected": [
//!         "57896044618658097711785492504343953926634992332820282019728792003956564819968"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(uint256 a) public pure returns(uint256) {
        return a << 255;
    }
}
