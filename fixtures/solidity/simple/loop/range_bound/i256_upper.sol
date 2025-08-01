//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0xF6afF0B5A655086C728c241370Bc9D174e319c21"
//!         }
//!       ],
//!       "expected": [
//!         "10"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main() public pure returns(uint256) {
        uint256 sum = 0;
        for(int256 i = 57896044618658097711785492504343953926634992332820282019728792003956564819957; i <= 57896044618658097711785492504343953926634992332820282019728792003956564819966; i++) {
            sum += 1;
        }
        return sum;
    }
}
