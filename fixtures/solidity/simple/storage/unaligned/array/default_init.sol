//! {
//!   "cases": [
//!     {
//!       "name": "f",
//!       "inputs": [
//!         {
//!           "method": "f",
//!           "calldata": [
//!             "1"
//!           ],
//!           "caller": "0x25a03d8cc3c44a810557b25a08ec216a5c19b023"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

// Report https://linear.app/matterlabs/issue/CPR-583/book-cypher-minimization-issue-with-comparison-uint8-array-element

pragma solidity >=0.4.19;

contract Test {
    uint8[2] KEY = [1, 1]; // if replace the first or second value with 0, the test will work

    function f(uint8 data) public view returns(bool) {
        return KEY[1] == data;
    }
}