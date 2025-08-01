//! {
//!   "targets": [
//!     "eravm"
//!   ],
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "#deployer",
//!           "calldata": [
//!             "0x03",
//!             "0x05",
//!             "0x02"
//!           ],
//!           "expected": [
//!             "Test.address"
//!           ],
//!           "caller": "0x90d5cA0b6FeA48c70f56CF81BF7877B725682897"
//!         },
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "16"
//!           ],
//!           "caller": "0x90d5cA0b6FeA48c70f56CF81BF7877B725682897"
//!         }
//!       ],
//!       "expected": [
//!         "81"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.6.5;

contract Test {
    uint256 immutable field_1;
    uint256 immutable field_2;
    uint256 immutable field_3;

    constructor(uint256 a, uint256 b, uint256 c) public {
        field_1 = a;
        field_2 = b;
        field_3 = c;
    }

    function main(uint8 witness) external returns(uint8) {
        return 19 * 3 - 8 / uint8(field_1) + (witness / (uint8(field_2) - 3) + 5) * (8 / uint8(field_3) / 2);
    }
}
