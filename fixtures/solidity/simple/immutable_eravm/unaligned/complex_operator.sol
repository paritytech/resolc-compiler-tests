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
//!           "caller": "0x8Cb7C8f80a657C1Dc02DC1fbd1A87B70541ab173"
//!         },
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "16"
//!           ],
//!           "caller": "0x8Cb7C8f80a657C1Dc02DC1fbd1A87B70541ab173"
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
    uint8 immutable field_1;
    uint8 immutable field_2;
    uint8 immutable field_3;

    constructor(uint8 a, uint8 b, uint8 c) public {
        field_1 = a;
        field_2 = b;
        field_3 = c;
    }

    function main(uint8 witness) external returns(uint8) {
        return 19 * 3 - 8 / field_1 + (witness / (field_2 - 3) + 5) * (8 / field_3 / 2);
    }
}
