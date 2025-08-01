//! {
//!   "targets": [
//!     "evm"
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
//!           "caller": "0x0b5Ac632c26B48b83cB61E0a8aC068785AB8D917"
//!         },
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "16"
//!           ],
//!           "caller": "0x0b5Ac632c26B48b83cB61E0a8aC068785AB8D917"
//!         }
//!       ],
//!       "expected": [
//!         "81"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

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
