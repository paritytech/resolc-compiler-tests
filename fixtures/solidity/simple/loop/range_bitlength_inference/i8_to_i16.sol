//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0xae3dffee97f92db0201d11cb8877c89738353bce"
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
