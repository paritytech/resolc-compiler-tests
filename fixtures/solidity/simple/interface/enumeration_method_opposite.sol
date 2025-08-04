//! {
//!   "cases": [
//!     {
//!       "name": "first",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0"
//!           ],
//!           "caller": "0x2Cf13BC950fFCc4bdf07a5737110f14ad1e7C765"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "second",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1"
//!           ],
//!           "caller": "0xC649715C14E5F46fEd84563Ed3Fedb3140b7F2e5"
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
    enum List {
        FIRST,
        SECOND
    }

    function opposite(List list) private pure returns(List) {
        if (list == List.FIRST) {
            return List.SECOND;
        } else {
            return List.FIRST;
        }
    }

    function main(List witness) public pure returns(List) {
        return opposite(witness);
    }
}
