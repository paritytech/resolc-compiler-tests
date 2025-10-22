//! {
//!   "cases": [
//!     {
//!       "name": "foo_1",
//!       "inputs": [
//!         {
//!           "method": "foo",
//!           "calldata": [
//!             "1"
//!           ],
//!           "caller": "0xaf913fdfd4770431fd72c19bb5623fcd18fe6c06"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "foo_15",
//!       "inputs": [
//!         {
//!           "method": "foo",
//!           "calldata": [
//!             "15"
//!           ],
//!           "caller": "0x0e4d535c5cd3ce0ac5058e968c62e8a1ea235b8f"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "foo_123132213123",
//!       "inputs": [
//!         {
//!           "method": "foo",
//!           "calldata": [
//!             "123132213123"
//!           ],
//!           "caller": "0xefe1d7f91a39edec6fb15982845f784ecf907f51"
//!         }
//!       ],
//!       "expected": [
//!         "2"
//!       ]
//!     },
//!     {
//!       "name": "ternary_9",
//!       "inputs": [
//!         {
//!           "method": "ternary",
//!           "calldata": [
//!             "1"
//!           ],
//!           "caller": "0xca548a3f5da60e114feb687d2fac1579ed4fbdea"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "ternary_57896044618658097711785492504343953926634992332820282019728792003956564819967",
//!       "inputs": [
//!         {
//!           "method": "ternary",
//!           "calldata": [
//!             "57896044618658097711785492504343953926634992332820282019728792003956564819967"
//!           ],
//!           "caller": "0xb5f59e6f015ef3ac2cb958ffe2bae73d117fa564"
//!         }
//!       ],
//!       "expected": [
//!         "2"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT
pragma solidity >=0.4.16;

contract Test {
    function foo(uint x) public pure returns (uint) {
        if (x < 10) {
            return 0;
        } else if (x < 20) {
            return 1;
        } else {
            return 2;
        }
    }

    function ternary(uint _x) public pure returns (uint) {
        // if (_x < 10) {
        //     return 1;
        // }
        // return 2;

        // shorthand way to write if / else statement
        return _x < 10 ? 1 : 2;
    }
}
