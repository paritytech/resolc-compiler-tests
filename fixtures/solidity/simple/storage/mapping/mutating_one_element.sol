//! {
//!   "cases": [
//!     {
//!       "name": "f",
//!       "inputs": [
//!         {
//!           "method": "f",
//!           "calldata": [],
//!           "caller": "0x3C407d4dc4841217E08E159f86718fd72c7BdC7a"
//!         }
//!       ],
//!       "expected": [
//!         "42"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

// Report https://linear.app/matterlabs/issue/CPR-220/mapping-test-failure

pragma solidity >=0.4.16;

contract Test {
    mapping(uint8 => uint8) m1;

    function f() public returns (uint8) {
        m1[1] = 42;
        return m1[1];
    }
}