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
//!           "caller": "0xf6b17687b14872ff594fc30972026a3bd673f005"
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
//!           "caller": "0x2e53218c073884b4459d22d5342ec58a2c52e667"
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
//!           "caller": "0xe6659721b5e631a57e8b4b1db2eb6271a81f8fe1"
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
