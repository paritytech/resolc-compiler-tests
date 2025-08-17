//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x6c23face014f20b3ebb65ae96d0d7ff32ab94c17"
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
    uint64 constant LIMIT = 10;

    function main() public pure returns(uint64) {
        uint64 sum = 0;
        for(uint64 i = 0; i <= LIMIT; i++) {
            sum += i;
        }
        return sum;
    }
}
