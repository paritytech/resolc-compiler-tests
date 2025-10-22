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
//!           "caller": "0x72cc6f96d909555a93946ea5927717b7553c093d",
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
//!           "caller": "0x72cc6f96d909555a93946ea5927717b7553c093d"
//!         },
//!         {
//!           "method": "b",
//!           "calldata": [],
//!           "expected": [
//!             "0x72cc6f96d909555a93946ea5927717b7553c093d"
//!           ],
//!           "caller": "0x72cc6f96d909555a93946ea5927717b7553c093d"
//!         },
//!         {
//!           "method": "c",
//!           "calldata": [],
//!           "expected": [
//!             "42"
//!           ],
//!           "caller": "0x72cc6f96d909555a93946ea5927717b7553c093d"
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
