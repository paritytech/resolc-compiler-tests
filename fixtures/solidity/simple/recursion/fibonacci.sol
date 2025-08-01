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
//!           "caller": "0xC5dbC721F342110F4aC5Dd77e9D9d05BE56865C3"
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
//!           "caller": "0xB3d84440aDD372569255E4a0AdF579497C483a72"
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
//!           "caller": "0xEF4fd491Ca2517059584a6bD57063a927480FCb9"
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
