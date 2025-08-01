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
//!           "caller": "0x4a0e93932653967b3d639f32068eeb5439c92F02"
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
