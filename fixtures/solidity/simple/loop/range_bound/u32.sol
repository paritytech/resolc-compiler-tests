//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x138854708d8b603c9b7d4d6e55b6d32d40557f4d"
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
        for(uint32 i = 4294967285; i <= 4294967294; i++) {
            sum += 1;
        }
        return sum;
    }
}
