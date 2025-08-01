//! {
//!   "cases": [
//!     {
//!       "name": "f",
//!       "inputs": [
//!         {
//!           "method": "f",
//!           "calldata": [],
//!           "caller": "0xfe37e6E59C0202D790ec71D219D7E7ffa539901E"
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