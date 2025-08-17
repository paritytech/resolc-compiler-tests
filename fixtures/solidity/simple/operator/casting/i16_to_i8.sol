//! {
//!   "cases": [
//!     {
//!       "name": "zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0"
//!           ],
//!           "caller": "0xb0142d883494197b02c6ece84f571d81bd831124"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42"
//!           ],
//!           "caller": "0x1326324f5a9fb193409e10006e4ea41b970df321"
//!         }
//!       ],
//!       "expected": [
//!         "42"
//!       ]
//!     },
//!     {
//!       "name": "max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "127"
//!           ],
//!           "caller": "0xf9a2c330a19e2fbfeb50fe7a7195b973bb0a3be9"
//!         }
//!       ],
//!       "expected": [
//!         "127"
//!       ]
//!     },
//!     {
//!       "name": "overflow_negative_minimal",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-129"
//!           ],
//!           "caller": "0x7a601ffa997cede6435aeabf4fa2091f09e149ec"
//!         }
//!       ],
//!       "expected": [
//!         "127"
//!       ]
//!     },
//!     {
//!       "name": "overflow_negative",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-1000"
//!           ],
//!           "caller": "0xa92f4b5c4fddcc37e5139873ac28a4a0a42d68df"
//!         }
//!       ],
//!       "expected": [
//!         "24"
//!       ]
//!     },
//!     {
//!       "name": "overflow_positive_minimal",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "128"
//!           ],
//!           "caller": "0x850cc185d6cae4a7fdfb3dd81f977dd1df7d6503"
//!         }
//!       ],
//!       "expected": [
//!         "-128"
//!       ]
//!     },
//!     {
//!       "name": "overflow_positive",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1000"
//!           ],
//!           "caller": "0xb1b7c87e8a0bf2e7fd1a1c582bd353e4c4529341"
//!         }
//!       ],
//!       "expected": [
//!         "-24"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(int16 a) public pure returns(int8) {
        return int8(a);
    }
}
