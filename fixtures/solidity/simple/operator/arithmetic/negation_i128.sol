//! {
//!   "cases": [
//!     {
//!       "name": "zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0"
//!           ],
//!           "caller": "0x3172231679d12eec5af9e61782fd9ef4823d9f4e"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_negative",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-42"
//!           ],
//!           "caller": "0xdbc29273d4de3d5645e308c7e629d28d4499b3d3"
//!         }
//!       ],
//!       "expected": [
//!         "42"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_positive",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42"
//!           ],
//!           "caller": "0x74891a05ad4d7ec87c1cffe9bd00bb4e1382b586"
//!         }
//!       ],
//!       "expected": [
//!         "-42"
//!       ]
//!     },
//!     {
//!       "name": "max_to_min",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "170141183460469231731687303715884105727"
//!           ],
//!           "caller": "0x200051e1cded828e35d62667e717d031ac5607e5"
//!         }
//!       ],
//!       "expected": [
//!         "-170141183460469231731687303715884105727"
//!       ]
//!     },
//!     {
//!       "name": "almost_min_to_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-170141183460469231731687303715884105727"
//!           ],
//!           "caller": "0x23952e6b6ae9a89fde6204be4312cc9e4fe0c59a"
//!         }
//!       ],
//!       "expected": [
//!         "170141183460469231731687303715884105727"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(int128 a) public pure returns(int128) {
        return -a;
    }
}
