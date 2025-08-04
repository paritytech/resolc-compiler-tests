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
//!           "caller": "0xd13b8f87877fD00E5C91FD7BF5377Fe4542C9822"
//!         }
//!       ],
//!       "expected": [
//!         "48"
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

    function multiplyByAll(List list) private pure returns(uint256) {
        return (uint256(list) + 1) * (uint256(List.FIRST) + 1) * (uint256(List.SECOND) + 1) * (uint256(List.THIRD) + 1);
    }

    function main(uint8 witness) public pure returns(uint256) {
        return multiplyByAll(List.FIRST) * witness;
    }
}
