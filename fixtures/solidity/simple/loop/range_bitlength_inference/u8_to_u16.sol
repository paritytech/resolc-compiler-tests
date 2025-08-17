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
