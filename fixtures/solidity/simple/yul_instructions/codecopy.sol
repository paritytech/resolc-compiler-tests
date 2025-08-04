//! {
//!   "targets": [
//!     "eravm"
//!   ],
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "#deployer",
//!           "calldata": [
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0x808c60F50b9Fc90C413CdEa59510C69073197029"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [
//!           "*"
//!         ],
//!         "events": [
//!           {
//!             "address": "Test.address",
//!             "topics": [],
//!             "values": [
//!               "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!             ]
//!           }
//!         ]
//!       }
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.22;

contract Test {
    constructor() public {
        assembly {
            codecopy(0, 0, codesize())
            log0(0, codesize())
        }
    }
}
