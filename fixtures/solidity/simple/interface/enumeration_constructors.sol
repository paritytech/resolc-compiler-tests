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
//!           "caller": "0x7b32266775a644a4580D6AF45a93147f23f81a8b"
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
//!           "caller": "0x799F64c7A41C19fB84Afd0a3D4c3b07bFAc79872"
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
//!           "caller": "0x4A316D44533e1EBBC895a3e0E14c13A15E9fA6D0"
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
