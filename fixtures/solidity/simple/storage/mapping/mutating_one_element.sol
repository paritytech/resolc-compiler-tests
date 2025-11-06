//! {
//!   "cases": [
//!     {
//!       "name": "f",
//!       "inputs": [
//!         {
//!           "method": "f",
//!           "calldata": [],
//!           "caller": "0x545a76ad1898be2efd90b5d3f3d241c19d4929e6"
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