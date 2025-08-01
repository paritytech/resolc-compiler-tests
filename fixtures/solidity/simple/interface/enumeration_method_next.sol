//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1"
//!           ],
//!           "caller": "0x70ab3777CB073d2593D7c90Fd200FB78D48A0483"
//!         }
//!       ],
//!       "expected": [
//!         "2"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    enum List {
        DEFAULT,
        FIRST,
        SECOND,
        THIRD
    }

    function next(List list) private pure returns(List) {
        if (list == List.DEFAULT) {
            return List.FIRST;
        } else if (list == List.FIRST) {
            return List.SECOND;
        } else if (list == List.SECOND) {
            return List.THIRD;
        } else {
            return List.DEFAULT;
        }
    }

    function main(List witness) public pure returns(List) {
        return next(witness);
    }
}
