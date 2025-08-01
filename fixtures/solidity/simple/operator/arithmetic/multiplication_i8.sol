//! {
//!   "cases": [
//!     {
//!       "name": "zero_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "0"
//!           ],
//!           "caller": "0x777b72429357CbA6628b53eF68F295Cf9214a983"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_positive",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42",
//!             "3"
//!           ],
//!           "caller": "0x13fbaFdeEe7fefcBe2f5d3Cb088603d5e1c0e0E4"
//!         }
//!       ],
//!       "expected": [
//!         "126"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_negative_first",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-42",
//!             "3"
//!           ],
//!           "caller": "0x8247CDE48C7e7c4f95dfF6647b566a533934D224"
//!         }
//!       ],
//!       "expected": [
//!         "-126"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_negative_second",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42",
//!             "-3"
//!           ],
//!           "caller": "0x0E2D615144883F359CB3471425f1377F16D45CE7"
//!         }
//!       ],
//!       "expected": [
//!         "-126"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_negative_both",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-42",
//!             "-3"
//!           ],
//!           "caller": "0x82a92299Bd5924053BFa74b88CcdD781391d0DdB"
//!         }
//!       ],
//!       "expected": [
//!         "126"
//!       ]
//!     },
//!     {
//!       "name": "to_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "127",
//!             "1"
//!           ],
//!           "caller": "0xEFabCdebb92e910D8f1c3BbcD1732dbF3ac02596"
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
//!             "-100",
//!             "2"
//!           ],
//!           "caller": "0x28d06F4684eC6FdCd07d417B8f9B1c74a4E653Cd"
//!         }
//!       ],
//!       "expected": [
//!         {
//!           "compiler_version": "<0.8",
//!           "return_data": [
//!             "56"
//!           ],
//!           "exception": false
//!         },
//!         {
//!           "compiler_version": ">=0.8",
//!           "return_data": [
//!             "0x4E487B7100000000000000000000000000000000000000000000000000000000",
//!             "0x0000001100000000000000000000000000000000000000000000000000000000"
//!           ],
//!           "exception": true
//!         }
//!       ]
//!     },
//!     {
//!       "name": "overflow_positive",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "100",
//!             "2"
//!           ],
//!           "caller": "0x0e697890a5CE3699FD7b0324478B130BCdA392f2"
//!         }
//!       ],
//!       "expected": [
//!         {
//!           "compiler_version": "<0.8",
//!           "return_data": [
//!             "-56"
//!           ],
//!           "exception": false
//!         },
//!         {
//!           "compiler_version": ">=0.8",
//!           "return_data": [
//!             "0x4E487B7100000000000000000000000000000000000000000000000000000000",
//!             "0x0000001100000000000000000000000000000000000000000000000000000000"
//!           ],
//!           "exception": true
//!         }
//!       ]
//!     },
//!     {
//!       "name": "overflow_minimal",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "16",
//!             "8"
//!           ],
//!           "caller": "0xEa7fA5D1A0cC55FFF8548C3c7662B5AB2191Ab6b"
//!         }
//!       ],
//!       "expected": [
//!         {
//!           "compiler_version": "<0.8",
//!           "return_data": [
//!             "-128"
//!           ],
//!           "exception": false
//!         },
//!         {
//!           "compiler_version": ">=0.8",
//!           "return_data": [
//!             "0x4E487B7100000000000000000000000000000000000000000000000000000000",
//!             "0x0000001100000000000000000000000000000000000000000000000000000000"
//!           ],
//!           "exception": true
//!         }
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(int8 a, int8 b) public pure returns(int8) {
        return a * b;
    }
}
