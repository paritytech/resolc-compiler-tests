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
//!           "caller": "0xCACF5EB98377A6A18145412D3B7077414B2A5bAf"
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
//!           "caller": "0xcDA5b2749F12cae3b74eC3a256E0206CFDabc4da"
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
//!           "caller": "0x6CfF31dA2d01d892445b7c7142F26Cf084ce7e31"
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
//!           "caller": "0x58eEdB6Bae4B8A81FEd7Bd0EA04F9e538f808F69"
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
