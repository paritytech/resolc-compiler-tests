//! {
//!   "cases": [
//!     {
//!       "name": "entry",
//!       "inputs": [
//!         {
//!           "method": "entry",
//!           "calldata": [],
//!           "caller": "0xEb6a0b29E3b01B29b9bCF0967Bda5c5C4f3D5Cf0"
//!         }
//!       ],
//!       "expected": [
//!         "5"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function entry() public pure returns(uint64) {
        uint64 cnt = 0;
        for(uint8 i = 0; i < 12; i++) {
            if (i % 2 == 0) {
                continue;
            }
            cnt += 1;
            if (i == 9) {
                break;
            }
        }
        return cnt;
    }
}
