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
//!           "caller": "0x773A741c7BaFc7a1Dc51427cf3a33193f67617f9"
//!         }
//!       ],
//!       "expected": [
//!         "0",
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_true_lesser",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "25",
//!             "42"
//!           ],
//!           "caller": "0x98Bd80b1c6679d4622D5905b3eb3a7DbC33b5251"
//!         }
//!       ],
//!       "expected": [
//!         "25",
//!         "42"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_true_bigger",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42",
//!             "25"
//!           ],
//!           "caller": "0xaCbb51cb336e39Cf43509Efe09803B2d40631E65"
//!         }
//!       ],
//!       "expected": [
//!         "25",
//!         "42"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_false",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42",
//!             "42"
//!           ],
//!           "caller": "0xA312aCF89c09fb49835bb7f6db3448b2f5593e88"
//!         }
//!       ],
//!       "expected": [
//!         "42",
//!         "42"
//!       ]
//!     },
//!     {
//!       "name": "max_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xffffffffffffffffffffffffffffffffffffffff",
//!             "0xffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0x53AA270F05b2AEd600f92969131cD714eFDE1BB9"
//!         }
//!       ],
//!       "expected": [
//!         "0xffffffffffffffffffffffffffffffffffffffff",
//!         "0xffffffffffffffffffffffffffffffffffffffff"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(address tokenA, address tokenB) public pure returns (address token0, address token1) {
        (token0, token1) = tokenA < tokenB ? (tokenA, tokenB) : (tokenB, tokenA);
    }
}
