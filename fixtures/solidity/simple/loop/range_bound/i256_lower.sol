//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x6b09d6433a379752157fd1a9e537c5cae5fa3168"
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
        for(int256 i = -57896044618658097711785492504343953926634992332820282019728792003956564819968; i <= -57896044618658097711785492504343953926634992332820282019728792003956564819959; i++) {
            sum += 1;
        }
        return sum;
    }
}
