//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x1d6ca4de171575E9E66B8d8360bC6403E7D3f949"
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
