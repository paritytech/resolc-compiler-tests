//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0xeCec74a306D2A44c1D876D423ea8fF84D87913d1"
//!         }
//!       ],
//!       "expected": [
//!         "-128"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main() public pure returns(int16) {
        int16 sum = 0;
        for(int16 i = -128; i < 128; i++) {
            sum += i;
        }
        return sum;
    }
}
