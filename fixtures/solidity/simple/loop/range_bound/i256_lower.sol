//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0xa56160a359f2eaa66f5c9df5245542b07339a9a6"
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
