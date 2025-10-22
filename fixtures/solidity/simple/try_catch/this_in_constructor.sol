//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "#deployer",
//!           "calldata": [],
//!           "caller": "0xe79b8124a79e7889da839b0849cf0aab21730d28"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "exception": true
//!       }
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0;

contract Test {
    constructor() public {
        try this.f1() {} catch {}
    }

    function f1() public {}
}
