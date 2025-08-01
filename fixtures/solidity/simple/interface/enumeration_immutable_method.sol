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
//!           "caller": "0x2bd718ecb3f8B533Adc0c70f0dAF0b45E8C0Cd35"
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
