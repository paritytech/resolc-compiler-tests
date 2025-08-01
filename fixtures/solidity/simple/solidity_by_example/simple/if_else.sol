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
//!           "caller": "0x7708FF2064578dcbb261Bde44f5Fd0bA6B727D7d"
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
//!           "caller": "0xbd92ce769718a8Bd35FEa068C404a0Ed21dbaD68"
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
//!           "caller": "0x3F551Cd1bc7559b4E7632427cc7ECCBC35907Eb3"
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
//!           "caller": "0x4FC5E31DAB7FA7Ef9f07a0E8b9055d9c4616FE63"
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
//!           "caller": "0x9009988B61eA2C09914BbDf897d1ee4e95941DBe"
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
