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
//!           "caller": "0xFbF0F7F6bbEA739C5043cDc3bCD8D30C648817db"
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
//!           "caller": "0x7CBAC3b646205BBbCdC834a21e492fc61C48e0a0"
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
//!           "caller": "0x89EFc368b650D0ce792c24821e84b4DAa85e0647"
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
