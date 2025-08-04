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
//!           "caller": "0xC9D89eDD96BBCf02C39daAC1C64dC7866791baA2"
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
