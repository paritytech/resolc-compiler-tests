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
//!           "caller": "0xf8f501e98daad5eeb6aa01389da307c71dd02f2d"
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