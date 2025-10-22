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
//!           "caller": "0xdc99b8d4a8fad961f8f90c0a7fefe490a8785c5a"
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
//!           "caller": "0xa365b8252ab82108f85155ef7485dfbb72482d94"
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
