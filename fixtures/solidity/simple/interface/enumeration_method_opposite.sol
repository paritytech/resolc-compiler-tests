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
//!           "caller": "0x236851975ca31599bceaf5abb5b010afe48eea09"
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
//!           "caller": "0xa093a1b185c88c20318aa8a511b13207d0a5e930"
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
