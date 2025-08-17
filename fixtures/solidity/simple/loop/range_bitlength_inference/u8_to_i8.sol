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
