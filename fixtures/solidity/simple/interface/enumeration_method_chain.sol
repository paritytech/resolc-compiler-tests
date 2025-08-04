//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "8"
//!           ],
//!           "caller": "0x416CAaA8e4a2DA0B70B5EF98638B651aE7430867"
//!         }
//!       ],
//!       "expected": [
//!         "24"
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

    function _new() private pure returns(List) {
        return List.DEFAULT;
    }

    function intoFirst(List list) private pure returns(List) {
        return List.FIRST;
    }

    function intoSecond(List list) private pure returns(List) {
        return List.SECOND;
    }

    function intoThird(List list) private pure returns(List) {
        return List.THIRD;
    }

    function main(uint8 witness) public pure returns(uint64) {
        return uint64(intoThird(intoSecond(intoFirst(_new())))) * witness;
    }
}
