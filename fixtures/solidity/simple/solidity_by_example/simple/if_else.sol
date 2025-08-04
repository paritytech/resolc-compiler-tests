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
//!           "caller": "0x3c68998b7cFc5419E381A902a0D1Ce05F9192A6f"
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
//!           "caller": "0x14e6307e89B1C8c6BC6A844B14DB9500eEc465A3"
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
//!           "caller": "0x87d9658a821f146844DB1975d89B3860c4C018fC"
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
//!           "caller": "0xA0B3b20Fc32bf9819c9b356b63E01291Bb19db50"
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
//!           "caller": "0xdC118E1eC53fFDEED76474B2bC1a726dF72615dd"
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
