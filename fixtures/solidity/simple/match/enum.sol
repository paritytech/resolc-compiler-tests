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
//!           "caller": "0x631Bc13504611dB1D559F17Df60e3665F251b73C"
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
//!           "caller": "0x2bE1349101ffB1F65a462490323df6afFD94e05A"
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
//!           "caller": "0xB1c829E16e0213889Fe158cE89Fd748230093927"
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
