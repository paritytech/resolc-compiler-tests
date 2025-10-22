//! {
//!   "cases": [
//!     {
//!       "name": "first",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0"
//!           ],
//!           "caller": "0xe6659721b5e631a57e8b4b1db2eb6271a81f8fe1"
//!         }
//!       ],
//!       "expected": [
//!         "5"
//!       ]
//!     },
//!     {
//!       "name": "second",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1"
//!           ],
//!           "caller": "0x0e6a27a8cc38cd27ec93006a09041c118e82ed5e"
//!         }
//!       ],
//!       "expected": [
//!         "10"
//!       ]
//!     },
//!     {
//!       "name": "third",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "2"
//!           ],
//!           "caller": "0x44483c48afaa76c2856ad8fbbaac9f94e5ac9c55"
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
    enum Language {
        JABBERWOCKY,
        ZINC,
        RUST
    }

    function main(Language language) public pure returns(uint8) {
        uint8 result;
        assembly {
            switch language
            case 0 { result := 5 }
            case 1 { result := 10 }
            case 2 { result := 15 }
        }
        return result;
    }
}
