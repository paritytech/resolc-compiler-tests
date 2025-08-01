//! {
//!   "cases": [
//!     {
//!       "name": "entry",
//!       "inputs": [
//!         {
//!           "method": "entry",
//!           "calldata": [],
//!           "caller": "0x333fe004b28627eA079682F37eB6102657D9b835"
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
        do {
            i += 1;
            if (i > 10) {
                break;
            }
            if (i % 2 == 0) {
                continue;
            }
            cnt += 1;
        } while(i < 20);
        return cnt;
    }
}
