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
//!           "caller": "0x84346b1845436fd98e16f9e829c3011b3a6c5ef7"
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
