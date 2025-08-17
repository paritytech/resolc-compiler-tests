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
//!           "caller": "0x9967e2c9e7cef7985680697ed5d789b297b47c70"
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
//!           "caller": "0x3ad2a5a73385e48e476386accceeea79692abe2f"
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
//!           "caller": "0x4ec254ad8a448b2773d816083efc5441a2fc8ea4"
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
//!           "caller": "0x254d2bce17cfea551cb3d8dc476fae854af0d2e5"
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
//!           "caller": "0xc6dd525848dc78c017d958ee385a81dbd3dd05d1"
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
