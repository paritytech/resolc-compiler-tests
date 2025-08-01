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
//!           "caller": "0x69F9f18B86b3668bf86D802091f21BEBDC3e36EA"
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
//!           "caller": "0x162FBde4FC05C93872F8f88b36e33c5551D23245"
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
//!           "caller": "0x0FfE74de4D38a23EcbA4200FC0D6a4E50B9b22Ff"
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
//!           "caller": "0xffC5221Ad0F0834675d87A04BD0f488392F1C540"
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
//!           "caller": "0x359a58550015E98A33ECA9E7c972d02F62B47C7d"
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
