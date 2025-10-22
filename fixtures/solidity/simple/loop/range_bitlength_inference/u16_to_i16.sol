//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x9e3289708dc5709926a542fcf260fd4b210461f0"
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
