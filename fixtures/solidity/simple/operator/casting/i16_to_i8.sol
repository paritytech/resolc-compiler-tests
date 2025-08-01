//! {
//!   "cases": [
//!     {
//!       "name": "zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0"
//!           ],
//!           "caller": "0xadBabB92917da5Eb98A2A31Da7174c36CcFfe82f"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42"
//!           ],
//!           "caller": "0x3C2eC149fdEC49b09af68b5e3e6eD03Ff68B57a0"
//!         }
//!       ],
//!       "expected": [
//!         "42"
//!       ]
//!     },
//!     {
//!       "name": "max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "127"
//!           ],
//!           "caller": "0xc491904529E13E6A0aCdEF24036350b600397d88"
//!         }
//!       ],
//!       "expected": [
//!         "127"
//!       ]
//!     },
//!     {
//!       "name": "overflow_negative_minimal",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-129"
//!           ],
//!           "caller": "0x3447659E07332bb8D6E2E1985FB12e8fD6175645"
//!         }
//!       ],
//!       "expected": [
//!         "127"
//!       ]
//!     },
//!     {
//!       "name": "overflow_negative",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-1000"
//!           ],
//!           "caller": "0xC14c5687Bda23cB36F7B37aE07674835515DcE58"
//!         }
//!       ],
//!       "expected": [
//!         "24"
//!       ]
//!     },
//!     {
//!       "name": "overflow_positive_minimal",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "128"
//!           ],
//!           "caller": "0xBD3620646aA3d0259f99DFd0125725eC6349Ede2"
//!         }
//!       ],
//!       "expected": [
//!         "-128"
//!       ]
//!     },
//!     {
//!       "name": "overflow_positive",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1000"
//!           ],
//!           "caller": "0xAAe1676E95aC24e80C27EF27A188e9b6a69841ff"
//!         }
//!       ],
//!       "expected": [
//!         "-24"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(int16 a) public pure returns(int8) {
        return int8(a);
    }
}
