//! {
//!   "cases": [
//!     {
//!       "name": "by_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "2",
//!             "0"
//!           ],
//!           "caller": "0x3f0e98ed6b9374df05713d073e055bc801aa10d1"
//!         }
//!       ],
//!       "expected": [
//!         {
//!           "compiler_version": "<=0.4.20",
//!           "return_data": [
//!             "0"
//!           ],
//!           "exception": false
//!         },
//!         {
//!           "compiler_version": ">=0.4.21,<0.8",
//!           "return_data": [],
//!           "exception": true
//!         },
//!         {
//!           "compiler_version": ">=0.8",
//!           "return_data": [
//!             "0x4E487B7100000000000000000000000000000000000000000000000000000000",
//!             "0x0000001200000000000000000000000000000000000000000000000000000000"
//!           ],
//!           "exception": true
//!         }
//!       ]
//!     },
//!     {
//!       "name": "ordinar_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42",
//!             "42",
//!             "1764"
//!           ],
//!           "caller": "0x91476fb245cc778c81220850a0d1bbb984dd2037"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_non_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "41",
//!             "2",
//!             "40"
//!           ],
//!           "caller": "0x681d1ef5cf0e5d0203271ff5ff6ce2e180a8d028"
//!         }
//!       ],
//!       "expected": [
//!         "2"
//!       ]
//!     },
//!     {
//!       "name": "overflow_minimal_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "2",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0x2fe88f86d9f5ed0536756bcfb318bc8aaa014918"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "overflow_minimal_non_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE",
//!             "2",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0x1b9f46b9c5f065fa5baf961ac978f457e4eb0b9c"
//!         }
//!       ],
//!       "expected": [
//!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD"
//!       ]
//!     },
//!     {
//!       "name": "overflow",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
//!             "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
//!             "0x000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0x50d5a530a6c1aa8bb270d0d0f44a53f599137e4f"
//!         }
//!       ],
//!       "expected": [
//!         "0x000000000000000000584D2AF1A1416B1F5F2B856DE5EE852CE4AB806250494C"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(uint x, uint y, uint m) public pure returns(uint) {
        return mulmod(x, y, m);
    }
}
