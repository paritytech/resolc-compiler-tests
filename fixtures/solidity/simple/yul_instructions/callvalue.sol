//! {
//!   "cases": [
//!     {
//!       "name": "zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "value": "0 wei",
//!           "caller": "0xe606ad191a34C6d8F432949F570DB83aeea97248"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "value": "1 wei",
//!           "caller": "0x73f6C33b19039d49B27C753bDdd221F2563062fF"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "value": "433478394034343 wei",
//!           "caller": "0x8B099A43FC0Bc6A2F35691d3835b592A9Ea05089"
//!         }
//!       ],
//!       "expected": [
//!         "433478394034343"
//!       ]
//!     },
//!     {
//!       "name": "max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "value": "340282366920938463463374607431768211455 wei",
//!           "caller": "0x10548988A113D84599eE8EB9Bc2ba286C34A4B50"
//!         }
//!       ],
//!       "expected": [
//!         "0xffffffffffffffffffffffffffffffff"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main() external payable returns(uint256 result) {
        assembly {
            result := callvalue()
        }
    }
}
