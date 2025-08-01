//! {
//!   "cases": [
//!     {
//!       "name": "by_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42",
//!             "25",
//!             "0"
//!           ],
//!           "caller": "0xDCB85fA9B4CF0a8e40B77a3dF2f7dc5Ea8Dad8E4"
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
//!       "name": "ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42",
//!             "25",
//!             "24"
//!           ],
//!           "caller": "0x0093F3c023941CB49cb19e76C465168e19d2C428"
//!         }
//!       ],
//!       "expected": [
//!         "19"
//!       ]
//!     },
//!     {
//!       "name": "overflow",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe",
//!             "0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0x238882Ed0CA605E44021374bFD3b76Ed6e46c3fe"
//!         }
//!       ],
//!       "expected": [
//!         "0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffd"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(uint x, uint y, uint m) public pure returns(uint) {
        return addmod(x, y, m);
    }
}
