//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42"
//!           ],
//!           "caller": "0xdf81503fbf3cc83e86bb3da47aed6b883f8b164d"
//!         }
//!       ],
//!       "expected": [
//!         "158"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    uint8 constant SCRUTINEE = 42;

    function main(uint8 witness) public pure returns(uint8) {
        uint8 conditional;
        if (SCRUTINEE == 64) {
            conditional = 100;
        } else {
            conditional = 200;
        }
        return conditional - witness;
    }
}
