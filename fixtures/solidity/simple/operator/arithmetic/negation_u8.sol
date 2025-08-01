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
//!           "caller": "0x15193c65dDd378a49cb9BFE778A7E0301676D0FF"
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
//!           "caller": "0x9bd81d3aD9362E5f7732D6Fc2a5c5d645F09A984"
//!         }
//!       ],
//!       "expected": [
//!         "-42"
//!       ]
//!     },
//!     {
//!       "name": "max_to_min",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "127"
//!           ],
//!           "caller": "0xC8302bF72b8DED4f64E4c37119999f1e4409E449"
//!         }
//!       ],
//!       "expected": [
//!         "-127"
//!       ]
//!     },
//!     {
//!       "name": "overflow",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "200"
//!           ],
//!           "caller": "0xC1147A964fAdBAffF340b861b4300b03F0B6Fdd6"
//!         }
//!       ],
//!       "expected": [
//!         "56"
//!       ]
//!     },
//!     {
//!       "name": "overflow_minimal",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "129"
//!           ],
//!           "caller": "0x300D76C7145753f6f2515f150F39a14A6f198F7F"
//!         }
//!       ],
//!       "expected": [
//!         "127"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(uint8 a) public pure returns(int8) {
        return -int8(a);
    }
}
