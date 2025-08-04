//! {
//!   "modes": [
//!     "Y",
//!     "E"
//!   ],
//!   "cases": [
//!     {
//!       "name": "zero",
//!       "inputs": [
//!         {
//!           "method": "fact",
//!           "calldata": [
//!             "0"
//!           ],
//!           "caller": "0x5F33114Fee0105c2ba53f5A0c2328d4cC85EEaF8"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "fifth",
//!       "inputs": [
//!         {
//!           "method": "fact",
//!           "calldata": [
//!             "5"
//!           ],
//!           "caller": "0x2Ab674C0A1F6e5Aa802570E90fdd250Bf7f36388"
//!         }
//!       ],
//!       "expected": [
//!         "120"
//!       ]
//!     },
//!     {
//!       "name": "twelfth",
//!       "inputs": [
//!         {
//!           "method": "fact",
//!           "calldata": [
//!             "12"
//!           ],
//!           "caller": "0xD87723587B1b7B62072eA14e3cF6Ac90ef47285b"
//!         }
//!       ],
//!       "expected": [
//!         "479001600"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function fact(uint8 n) public pure returns(uint64) {
        if (n == 0) {
            return 1;
        }

        return fact(n - 1) * n;
    }
}
