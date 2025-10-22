//! {
//!   "cases": [
//!     {
//!       "name": "zero_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "0"
//!           ],
//!           "caller": "0x158cc083cfbcffb2f983a3aa8b027eb0711c9831"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_false_lesser",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-25",
//!             "42"
//!           ],
//!           "caller": "0x691cb1645a4f21d879973b3a3b98a714fc1970d6"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_true_bigger",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42",
//!             "-25"
//!           ],
//!           "caller": "0x754164c0cb85dda1b5b18e5b62adbb4d60c3efbf"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_false_negative",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-42",
//!             "-42"
//!           ],
//!           "caller": "0x556330e8d92912ccf133851ba03abd2db70da404"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_false_positive",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42",
//!             "42"
//!           ],
//!           "caller": "0x1745ceba112b0a41638e235ec59b35adf37b70ab"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "min_min",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-128",
//!             "-128"
//!           ],
//!           "caller": "0xa24c85b16a440587793f82e358fa6b204468735b"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "max_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "127",
//!             "127"
//!           ],
//!           "caller": "0x5304fb08724d73f2bb5e04c582407c33cde6c8d3"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(int8 a, int8 b) public pure returns(bool) {
        return a > b;
    }
}
