//! {
//!   "cases": [
//!     {
//!       "name": "_false",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0"
//!           ],
//!           "caller": "0x42E0D526bf25f0fafaECA8B43da6fB031Cc7A48D"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "_true",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1"
//!           ],
//!           "caller": "0xF0DFC0e20503dCD32309d26ebF6A1E7e7C71dDff"
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
    function main(bool a) public pure returns(bool) {
        return !a;
    }
}
