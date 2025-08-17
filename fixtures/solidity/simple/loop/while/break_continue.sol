//! {
//!   "cases": [
//!     {
//!       "name": "entry",
//!       "inputs": [
//!         {
//!           "method": "entry",
//!           "calldata": [],
//!           "caller": "0x9a5279029e9a2d6e787c5a09cb068ab3d45e209d"
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
        uint8 i = 0;
        uint64 cnt = 0;
        while(i < 20) {
            i += 1;
            if (i > 10) {
                break;
            }
            if (i % 2 == 0) {
                continue;
            }
            cnt += 1;
        }
        return cnt;
    }
}
