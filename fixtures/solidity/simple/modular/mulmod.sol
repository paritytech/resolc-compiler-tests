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
//!           "caller": "0x99c9B85dc9081C3d8e12506aA24C954D22CB1D0c"
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
//!           "caller": "0x695eDC7280284Cb387E647B00A1C63e2af5116f5"
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
//!           "caller": "0x3b4b31724451ca25b02972dDEC44a311695C3751"
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
//!           "caller": "0xD6259cFA851e006fA76B466d80B013f831dFfca4"
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
//!           "caller": "0xadc20eBCC18893E81e426cC749e9DB02db72Ba9B"
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
//!           "caller": "0x44eD7bF89DAf0333Ce65f875715d07d761d3717c"
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
