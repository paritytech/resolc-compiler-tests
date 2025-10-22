//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "5"
//!           ],
//!           "caller": "0x9a5279029e9a2d6e787c5a09cb068ab3d45e209d"
//!         }
//!       ],
//!       "expected": [
//!         "15"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(uint8 witness) public pure returns(uint8) {
        uint8 result = 0;
        uint8 i = 0;
        while(i <= witness) {
            result += i;
            i += 1;
        }
        return result;
    }
}
