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
//!           "caller": "0xd7B504c8b979884A501f38FBbA56fEd6452cA61A"
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
//!           "caller": "0xaFF305007e96b2c3277cb84A5f6581b7342780e9"
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
//!           "caller": "0x96B1f4511055841f4Fdee091beC3aB4B09B65C49"
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
