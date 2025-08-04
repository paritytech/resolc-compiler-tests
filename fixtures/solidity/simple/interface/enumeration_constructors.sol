//! {
//!   "cases": [
//!     {
//!       "name": "one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "5"
//!           ],
//!           "caller": "0xD83845E89C7Eadfb6c652d28aCB23b43572275aF"
//!         }
//!       ],
//!       "expected": [
//!         "30"
//!       ]
//!     },
//!     {
//!       "name": "two",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "100"
//!           ],
//!           "caller": "0xe618A50a71B3719bcae3e37e944DF59B97031b72"
//!         }
//!       ],
//!       "expected": [
//!         "600"
//!       ]
//!     },
//!     {
//!       "name": "three",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "999999"
//!           ],
//!           "caller": "0xCaAb009cC6b140E83B2ab071c51EacB05EE39db9"
//!         }
//!       ],
//!       "expected": [
//!         "5999994"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    enum List {
        FIRST,
        SECOND,
        THIRD
    }

    function first() private pure returns(List) {
        return List.FIRST;
    }

    function second() private pure returns(List) {
        return List.SECOND;
    }

    function third() private pure returns(List) {
        return List.THIRD;
    }

    function main(uint256 witness) public pure returns(uint256) {
        return (uint256(first()) + 1 + uint256(second()) + 1 + uint256(third()) + 1) * witness;
    }
}
