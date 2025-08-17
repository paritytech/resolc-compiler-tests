//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "31"
//!           ],
//!           "caller": "0x673c638147fe91e4277646d86d5ae82f775eea5c"
//!         }
//!       ],
//!       "expected": [
//!         "2"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

// Report https://linear.app/matterlabs/issue/CPR-205/back-end-optimization-bug-minimized-complex-infinite-loop

pragma solidity >=0.4.16;

contract Test {
    function main(uint8 param) public pure returns(uint64) {
        uint64 cnt = 0;

        uint8 j = 1;
        while (j < 4) {
            for (uint8 h = 0; h < 1; h++) {
                if (param == 4)
                    return 40;
                cnt += 1;
            }
            j *= 2;
        }
        
        return cnt;
    }
}
