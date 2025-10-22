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
//!           "caller": "0xf2db24ce124994060302fdad682c17860348bfe5"
//!         }
//!       ],
//!       "expected": []
//!     },
//!     {
//!       "name": "one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1"
//!           ],
//!           "caller": "0x1d4ac942bc6f8bd053a3cd659b718f0404c9af1f"
//!         }
//!       ],
//!       "expected": []
//!     },
//!     {
//!       "name": "ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xE0281C82903B3293902E82845FF823834309A8F239982392328448AB42789DA8"
//!           ],
//!           "caller": "0x66c00bac75e490dd92958e2ad2b3767a2b0d098c"
//!         }
//!       ],
//!       "expected": []
//!     },
//!     {
//!       "name": "max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0x2626ccfcdcc2a28305119da5e97b50b9f74bf208"
//!         }
//!       ],
//!       "expected": []
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(uint256 a) external view {
        assembly {
            pop(a)
        }
    }
}
