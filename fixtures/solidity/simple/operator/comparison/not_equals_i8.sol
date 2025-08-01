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
//!           "caller": "0xbEc5c09999375F60f91633a30bfED85440B10496"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_true_lesser",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-25",
//!             "42"
//!           ],
//!           "caller": "0x7CE4a6EEF91CaeE1f93ea9d6aB2856dcA9C49753"
//!         }
//!       ],
//!       "expected": [
//!         "1"
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
//!           "caller": "0xdfdb0AAf163786d22cbAaf7F4Bfa72D246dEDd04"
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
//!           "caller": "0xb1e9C0372375dBf0EC794572249A147CAB4cF949"
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
//!           "caller": "0x6E2b6CdB8B8EB70807D1F942F8e1Dd1d74285084"
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
//!           "caller": "0xd2EAC739bC25Fa52Ae75e4d6eAaf397e0ebD6055"
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
//!           "caller": "0x724Fb03770B250cb9e31B8999401313708Bf9af8"
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
        return a != b;
    }
}
