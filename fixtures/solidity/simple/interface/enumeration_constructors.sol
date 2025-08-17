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
//!           "caller": "0xcde6e23c60384e99a9ea6169f22c354a93ea8723"
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
//!           "caller": "0xdd12150576e400de8cf3f675185b4cfc8c72b7f8"
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
//!           "caller": "0x3b9eefea60b06552e67fa21723c1c9e5e70e00db"
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
