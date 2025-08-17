//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "#deployer",
//!           "instance": "Test",
//!           "calldata": [
//!             "3",
//!             "5",
//!             "2"
//!           ],
//!           "caller": "0xb8c2b04a8b05215b0ca7c98f63b4ad655718ccc4"
//!         },
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "12"
//!           ],
//!           "caller": "0xb8c2b04a8b05215b0ca7c98f63b4ad655718ccc4"
//!         }
//!       ],
//!       "expected": [
//!         "42"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    uint256 field_1;
    uint256 field_2;
    uint256 field_3;

    constructor(uint256 a, uint256 b, uint256 c) {
        field_1 = a;
        field_2 = b;
        field_3 = c;
    }

    function main(uint8 witness) public returns(uint8) {
        return witness + uint8(field_1) * uint8(field_2) * uint8(field_3);
    }
}