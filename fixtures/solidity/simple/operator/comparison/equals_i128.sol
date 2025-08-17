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
//!           "caller": "0xc4ad60337b04fc721912531a52a5d77878293fb9"
//!         }
//!       ],
//!       "expected": [
//!         "1"
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
//!           "caller": "0xfc5ba3041f750f9b6820ce066c153eb396aac1ff"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_false_bigger",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42",
//!             "-25"
//!           ],
//!           "caller": "0x32480c2d857941d2fff4e34f0910b20c0f9c23bc"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_true_negative",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-42",
//!             "-42"
//!           ],
//!           "caller": "0x8041c9a96585053db2d7214b5de56828645b8e62"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_true_positive",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42",
//!             "42"
//!           ],
//!           "caller": "0x444ca66b3ceb4187840cb1a205566a1413d5fecb"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "min_min",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-170141183460469231731687303715884105728",
//!             "-170141183460469231731687303715884105728"
//!           ],
//!           "caller": "0xf084bbaabee1a700a8faa404027db620a5aa0059"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "max_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "170141183460469231731687303715884105727",
//!             "170141183460469231731687303715884105727"
//!           ],
//!           "caller": "0x602d562b4ef2544f851587619b56f77a9d965d45"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(int128 a, int128 b) public pure returns(bool) {
        return a == b;
    }
}
