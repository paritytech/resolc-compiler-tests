//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0xAD5d5b285346d0fCA83B24b9aBFD2a9b961e8feF"
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
        // using uint64 instead int64
        for(uint64 i = 9223372036854775797; i <= 9223372036854775806; i++) {
            sum += 1;
        }
        return sum;
    }
}
