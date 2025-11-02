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
//!           "caller": "0x4a2f7086171327d4b78845049dcb613cf9e99683"
//!         },
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "16"
//!           ],
//!           "caller": "0x4a2f7086171327d4b78845049dcb613cf9e99683"
//!         }
//!       ],
//!       "expected": [
//!         "81"
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
        return 19 * 3 - 8 / uint8(field_1) + (witness / (uint8(field_2) - 3) + 5) * (8 / uint8(field_3) / 2);
    }
}
