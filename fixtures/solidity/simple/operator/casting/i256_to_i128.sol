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
//!           "caller": "0xb4f543B503624DBc0b34BE2d0b3D003BA6147CA8"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42"
//!           ],
//!           "caller": "0x27657C955066744bC899F549f0f0203477b4b80b"
//!         }
//!       ],
//!       "expected": [
//!         "42"
//!       ]
//!     },
//!     {
//!       "name": "max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "170141183460469231731687303715884105727"
//!           ],
//!           "caller": "0xF9A30fA730179D8beC3625040BF02019873eC2ff"
//!         }
//!       ],
//!       "expected": [
//!         "170141183460469231731687303715884105727"
//!       ]
//!     },
//!     {
//!       "name": "overflow_negative_minimal",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-170141183460469231731687303715884105729"
//!           ],
//!           "caller": "0xA2B71f9863ed440b2666dc50eAF272363f9956A3"
//!         }
//!       ],
//!       "expected": [
//!         "170141183460469231731687303715884105727"
//!       ]
//!     },
//!     {
//!       "name": "overflow_negative",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-180141183460469231731687303715887105728"
//!           ],
//!           "caller": "0x070c89D5C3589688c62B70c08cAB5A3CFfBB6021"
//!         }
//!       ],
//!       "expected": [
//!         "160141183460469231731687303715881105728"
//!       ]
//!     },
//!     {
//!       "name": "overflow_positive_minimal",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "170141183460469231731687303715884105728"
//!           ],
//!           "caller": "0xD27867F3e890BcCE16d75FAa050B2ffc68665Aa6"
//!         }
//!       ],
//!       "expected": [
//!         "-170141183460469231731687303715884105728"
//!       ]
//!     },
//!     {
//!       "name": "overflow_positive",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "190141183460469231731687303715884105728"
//!           ],
//!           "caller": "0xe957b5fe93434fefc0d3A7c97Ad072BFAC59cCfB"
//!         }
//!       ],
//!       "expected": [
//!         "-150141183460469231731687303715884105728"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(int256 a) public pure returns(int128) {
        return int128(a);
    }
}
