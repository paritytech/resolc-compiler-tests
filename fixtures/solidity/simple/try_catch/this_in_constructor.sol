//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "#deployer",
//!           "calldata": [],
//!           "caller": "0xc514a69465f97d2f4086cc2d465addd3d2810a85"
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
