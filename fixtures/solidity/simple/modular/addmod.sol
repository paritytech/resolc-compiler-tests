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
//!           "caller": "0x8247cde48c7e7c4f95dff6647b566a533934d224"
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
//!           "caller": "0x0e2d615144883f359cb3471425f1377f16d45ce7"
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
//!           "caller": "0x82a92299bd5924053bfa74b88ccdd781391d0ddb"
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
