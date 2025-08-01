//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0xe826Acf15E76DED94DAfcBaC10a34EE70b33de70"
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
