//! {
//!   "modes": [
//!     "Y",
//!     "E"
//!   ],
//!   "cases": [
//!     {
//!       "name": "gcd_15_6",
//!       "inputs": [
//!         {
//!           "method": "gcd",
//!           "calldata": [
//!             "15",
//!             "6"
//!           ],
//!           "caller": "0x5e633035EDC3aA3B32E29517c0a26c33A3E0C440"
//!         }
//!       ],
//!       "expected": [
//!         "3"
//!       ]
//!     },
//!     {
//!       "name": "gcd_23_19",
//!       "inputs": [
//!         {
//!           "method": "gcd",
//!           "calldata": [
//!             "23",
//!             "19"
//!           ],
//!           "caller": "0x5ea59BF504117bB347ECfb26Ca9EF414F856d8c9"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "gcd_76800_15435",
//!       "inputs": [
//!         {
//!           "method": "gcd",
//!           "calldata": [
//!             "76800",
//!             "15435"
//!           ],
//!           "caller": "0xad99e257dae57e3a8622516a7E6DEF4a9A89bdFd"
//!         }
//!       ],
//!       "expected": [
//!         "15"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function gcd(uint64 a, uint64 b) public pure returns(uint64) {
        if (b == 0) {
            return a;
        }

        return gcd(b, a%b);
    }
}
