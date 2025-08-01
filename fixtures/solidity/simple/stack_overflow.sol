//! {
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "f",
//!           "calldata": [],
//!           "caller": "0x27fd39271EB27A621ED53a6CE5880A15c8B90fA8"
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

pragma solidity >=0.4.16;

interface A {
    function f() external view returns (bool);
}

contract Test {
    function f() external {
        uint256 stableFlag;
        for (uint256 i = 0; i < 1; i++) {
            if (A(address(0)).f()) {
                stableFlag = stableFlag | (1 << i);
            }
        }
    }
}
