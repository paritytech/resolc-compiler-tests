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
    function main() public pure returns(uint64) {
        uint64 sum = 0;
        for(int64 i = -9223372036854775808; i <= -9223372036854775799; i++) {
            sum += 1;
        }
        return sum;
    }
}
