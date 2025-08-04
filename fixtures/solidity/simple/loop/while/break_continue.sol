//! {
//!   "cases": [
//!     {
//!       "name": "entry",
//!       "inputs": [
//!         {
//!           "method": "entry",
//!           "calldata": [],
//!           "caller": "0xd55eCa0d426C2448194F9F51dd33d22d0cA0b23b"
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
