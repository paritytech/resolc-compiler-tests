//! {
//!   "cases": [
//!     {
//!       "name": "first",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1"
//!           ],
//!           "caller": "0x07c8894Ce971C287010f9B93766fdA37b2807C4A"
//!         }
//!       ],
//!       "expected": [
//!         "10"
//!       ]
//!     },
//!     {
//!       "name": "second",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "2"
//!           ],
//!           "caller": "0x7fC8E62b63C4c465d0cd886DC1DF9d619F6B6782"
//!         }
//!       ],
//!       "expected": [
//!         "20"
//!       ]
//!     },
//!     {
//!       "name": "third",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "255"
//!           ],
//!           "caller": "0xeCf1Ac20d015ECf61D05a38f0b3d9FA52ECBf434"
//!         }
//!       ],
//!       "expected": [
//!         "64"
//!       ]
//!     },
//!     {
//!       "name": "another",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0"
//!           ],
//!           "caller": "0xd604823c569965563aD9d39848E6eE5eD5f81704"
//!         }
//!       ],
//!       "expected": [
//!         "42"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(uint8 witness) public pure returns(uint8) {
        uint8 result;
        assembly {
            switch witness
            case 1 { result := 10 }
            case 2 { result := 20 }
            default {
                switch witness
                case 255 { result := 64 }
                default { result := 42}
            }
        }
        return result;
    }
}
