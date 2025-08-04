//! {
//!   "modes": [
//!     "Y",
//!     "E"
//!   ],
//!   "cases": [
//!     {
//!       "name": "first",
//!       "inputs": [
//!         {
//!           "method": "fib",
//!           "calldata": [
//!             "1"
//!           ],
//!           "caller": "0x4D2564062Ab33489b45bdb8d84AD7908d96481E8"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "eighth",
//!       "inputs": [
//!         {
//!           "method": "fib",
//!           "calldata": [
//!             "8"
//!           ],
//!           "caller": "0x0acd4ECa5c5F6E26B85c880297C6d2A8097DcB9e"
//!         }
//!       ],
//!       "expected": [
//!         "21"
//!       ]
//!     },
//!     {
//!       "name": "sixteenth",
//!       "inputs": [
//!         {
//!           "method": "fib",
//!           "calldata": [
//!             "16"
//!           ],
//!           "caller": "0xc81c78A46C70db303f86e612481ca992940659C4"
//!         }
//!       ],
//!       "expected": [
//!         "987"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function fib(uint8 n) public pure returns(uint64) {
        if (n <= 1) {
            return n;
        }

        return fib(n - 1) + fib(n - 2);
    }
}
