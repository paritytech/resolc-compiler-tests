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
//!           "caller": "0xC5Ddf8F53D5f2CD37cD7bfAE4712F2E8e08D9d54"
//!         }
//!       ],
//!       "expected": []
//!     },
//!     {
//!       "name": "one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1"
//!           ],
//!           "caller": "0x7b2b8bB2AE61D4CC274d1c5a5747343667864a1d"
//!         }
//!       ],
//!       "expected": []
//!     },
//!     {
//!       "name": "ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xE0281C82903B3293902E82845FF823834309A8F239982392328448AB42789DA8"
//!           ],
//!           "caller": "0x0703EF75523936b64271853ca0F66136257ee506"
//!         }
//!       ],
//!       "expected": []
//!     },
//!     {
//!       "name": "max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0x27743774155eC8837f9f23199ca21BC7f9D1516e"
//!         }
//!       ],
//!       "expected": []
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(uint256 a) external view {
        assembly {
            pop(a)
        }
    }
}
