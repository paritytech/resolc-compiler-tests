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
//!           "caller": "0x1913E1CAE04838DFc9339d38c1ff0933deDc38D0"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_positive",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-3",
//!             "4"
//!           ],
//!           "caller": "0x1D6Fa734909Ac700dB9A6f48454936B2f6bDcc90"
//!         }
//!       ],
//!       "expected": [
//!         "81"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_negative",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-4",
//!             "3"
//!           ],
//!           "caller": "0x16b0B3a63EbCa32905D6EaCe8F3adB470B5584aa"
//!         }
//!       ],
//!       "expected": [
//!         "-64"
//!       ]
//!     },
//!     {
//!       "name": "to_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "11",
//!             "2"
//!           ],
//!           "caller": "0x4B068bd94bD0B4BBAdf29Ac69E5036d5d5f6d68A"
//!         }
//!       ],
//!       "expected": [
//!         "121"
//!       ]
//!     },
//!     {
//!       "name": "overflow",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "100",
//!             "2"
//!           ],
//!           "caller": "0x5D7FD4c34961E8f3BBEb10ae55DEFE5cbE754f98"
//!         }
//!       ],
//!       "expected": [
//!         {
//!           "compiler_version": "<0.8",
//!           "return_data": [
//!             "16"
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
//!             "12",
//!             "2"
//!           ],
//!           "caller": "0x01B03aDE2cd1CA45494FBe17aC831d9C771D5540"
//!         }
//!       ],
//!       "expected": [
//!         {
//!           "compiler_version": "<0.8",
//!           "return_data": [
//!             "115792089237316195423570985008687907853269984665640564039457584007913129639824"
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
//!       "name": "max_pow_overflow",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-2",
//!             "255"
//!           ],
//!           "caller": "0x24d522cf22B7a540E97B309885615C9201A8Ba0d"
//!         }
//!       ],
//!       "expected": [
//!         {
//!           "compiler_version": "<0.8",
//!           "return_data": [
//!             "0"
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
//!       "name": "0_max_pow",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "255"
//!           ],
//!           "caller": "0x1Df13A9b94F60afD3C1983Ee4d08516C6EE6db25"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "1_max_pow",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "255"
//!           ],
//!           "caller": "0x1363F91510e34d80ACa5493062Ae2920f3685284"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "1n_max_pow",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-1",
//!             "255"
//!           ],
//!           "caller": "0x09C426999B34918e7A5F887f6D570C052058Fb82"
//!         }
//!       ],
//!       "expected": [
//!         "-1"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0;

contract Test {
    function main(int8 a, uint8 b) public pure returns(int8) {
        return a ** b;
    }
}
