//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x0ae756D1A5BF2153989A8B680F07989F9C61657e"
//!         }
//!       ],
//!       "expected": [
//!         "-200"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main() public pure returns(int16) {
        int16 sum = 0;
        for(int16 i = -200; i < 200; i++) {
            sum += i;
        }
        return sum;
    }
}
