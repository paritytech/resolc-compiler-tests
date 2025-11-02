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
//!           "caller": "0xed96741280ce1fd02789dccbce4e8ee2656ac552"
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
//!           "caller": "0xf2da1973de12ba35a2f25eff2359e7e5b140b19c"
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
//!           "caller": "0x3cff68d8d84a0b1a6c5ea394819de2e4b26dae72"
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
