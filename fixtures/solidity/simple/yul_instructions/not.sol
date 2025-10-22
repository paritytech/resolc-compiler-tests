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
//!           "caller": "0x35ae85f3dd323d68daf60ea20edae66b307755b0"
//!         }
//!       ],
//!       "expected": [
//!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!       ]
//!     },
//!     {
//!       "name": "one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1"
//!           ],
//!           "caller": "0x38a6dd2a14b5ecf7972ddaf6196943a4aa74d38e"
//!         }
//!       ],
//!       "expected": [
//!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE"
//!       ]
//!     },
//!     {
//!       "name": "ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xE0281C82903B3293902E82845FF823834309A8F239982392328448AB42789DA8"
//!           ],
//!           "caller": "0xd4dbeedca9ce0df9625023203dbcb7f49d51ec3c"
//!         }
//!       ],
//!       "expected": [
//!         "0x1FD7E37D6FC4CD6C6FD17D7BA007DC7CBCF6570DC667DC6DCD7BB754BD876257"
//!       ]
//!     },
//!     {
//!       "name": "max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0x736d036ed2bfdca1c35dd1ba540334156374cc77"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(uint256 a) external pure returns(uint256 result) {
        assembly {
            result := not(a)
        }
    }
}
