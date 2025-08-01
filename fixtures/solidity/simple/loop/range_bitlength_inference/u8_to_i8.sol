//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x2e430193C09A7fB1fa7bA767a6873918d264d76d"
//!         }
//!       ],
//!       "expected": [
//!         "-10"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main() public pure returns(int8) {
        int8 sum = 0;
        for(int8 i = -10; i < 10; i++) {
            sum += i;
        }
        return sum;
    }
}
