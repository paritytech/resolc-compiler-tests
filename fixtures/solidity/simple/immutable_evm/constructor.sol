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
//!           "caller": "0x24E4fF1FacfBB097395Ae071a9Ac46aaD4A75C66",
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
//!           "caller": "0x72bB36a1F56F96f73d37a710A855001487d83826"
//!         },
//!         {
//!           "method": "b",
//!           "calldata": [],
//!           "expected": [
//!             "0x99"
//!           ],
//!           "caller": "0x72bB36a1F56F96f73d37a710A855001487d83826"
//!         },
//!         {
//!           "method": "c",
//!           "calldata": [],
//!           "expected": [
//!             "42"
//!           ],
//!           "caller": "0x72bB36a1F56F96f73d37a710A855001487d83826"
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
