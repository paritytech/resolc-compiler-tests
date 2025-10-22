//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0xeb3025e7ac2764040384316b33476e048961a71f"
//!         }
//!       ],
//!       "expected": [
//!         "2545"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main() public pure returns(uint16) {
        uint16 sum = 0;
        for(uint16 i = 250; i < 260; i++) {
            sum += i;
        }
        return sum;
    }
}
