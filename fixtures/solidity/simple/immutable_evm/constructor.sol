//! {
//!   "targets": [
//!     "evm"
//!   ],
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "#deployer",
//!           "caller": "0x1cc0c65ca5dd6b767338946f2c44c02040744ef5",
//!           "calldata": [
//!             "25",
//!             "42"
//!           ],
//!           "expected": [
//!             "Test.address"
//!           ]
//!         },
//!         {
//!           "method": "a",
//!           "calldata": [],
//!           "expected": [
//!             "25"
//!           ],
//!           "caller": "0xce97ff76b409838716b2436f872b5d6cac9ada84"
//!         },
//!         {
//!           "method": "b",
//!           "calldata": [],
//!           "expected": [
//!             "0x1cc0c65ca5dd6b767338946f2c44c02040744ef5"
//!           ],
//!           "caller": "0xce97ff76b409838716b2436f872b5d6cac9ada84"
//!         },
//!         {
//!           "method": "c",
//!           "calldata": [],
//!           "expected": [
//!             "42"
//!           ],
//!           "caller": "0xce97ff76b409838716b2436f872b5d6cac9ada84"
//!         }
//!       ],
//!       "expected": [
//!         "42"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

// Report https://linear.app/matterlabs/issue/CPR-288/implement-the-setimmutable-and-loadimmutable-functions

pragma solidity >=0.8.0;

contract Test {
    uint public immutable a;
    address public immutable b;
    uint8 public immutable c;

    constructor(uint x, uint8 y) {
        a = x;
        b = msg.sender;
        c = y;
    }
}
