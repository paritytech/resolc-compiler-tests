//! {
//!   "targets": [
//!     "eravm"
//!   ],
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "#deployer",
//!           "caller": "0xd695E42e5BF3954441f5932d0568a68f895E2c20",
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
//!           "caller": "0xd695E42e5BF3954441f5932d0568a68f895E2c20"
//!         },
//!         {
//!           "method": "b",
//!           "calldata": [],
//!           "expected": [
//!             "0x99"
//!           ],
//!           "caller": "0xd695E42e5BF3954441f5932d0568a68f895E2c20"
//!         },
//!         {
//!           "method": "c",
//!           "calldata": [],
//!           "expected": [
//!             "42"
//!           ],
//!           "caller": "0xd695E42e5BF3954441f5932d0568a68f895E2c20"
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
    uint immutable public a;
    address immutable public b;
    uint8 immutable public c;

    constructor(uint x, uint8 y) {
        a = x;
        b = msg.sender;
        c = y;
    }
}
