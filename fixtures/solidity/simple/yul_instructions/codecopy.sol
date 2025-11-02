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
//!           "caller": "0xb39fd1043756ae2bfc5a69a35439562825fee8f5"
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
