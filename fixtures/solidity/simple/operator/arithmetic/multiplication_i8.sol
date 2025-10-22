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
//!           "caller": "0x2e430193c09a7fb1fa7ba767a6873918d264d76d"
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
//!           "caller": "0x1d6ca4de171575e9e66b8d8360bc6403e7d3f949"
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
//!           "caller": "0xe826acf15e76ded94dafcbac10a34ee70b33de70"
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
//!           "caller": "0xbb8a8fe4f12953a5840c6570d5e836079329be46"
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
//!           "caller": "0x4a0e93932653967b3d639f32068eeb5439c92f02"
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
//!           "caller": "0x72c7a47c5d01bddf9067eabb345f5daabdead13f"
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
//!           "caller": "0xda4b0a29731a0a7f38ec4da467399f663e14b1ce"
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
//!           "caller": "0x1c4d4ebd8e440a1a7565f0e9f45412e9a22636d8"
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
//!           "caller": "0x8c1e27d709fb79b6d1d22e4781018d2dfbad3927"
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
