//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x67830831f4C7b1f0C4869A0059A9B5305bff08A4"
//!         }
//!       ],
//!       "expected": [
//!         "55"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main() public pure returns(uint64) {
        uint64 limit = 10;
        uint64 sum = 0;
        for(uint64 i = 0; i <= limit; i++) {
            sum += i;
        }
        return sum;
    }
}
