//! {
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "f",
//!           "calldata": [],
//!           "caller": "0xf1f6619b38a98d6de0800f1defc0a6399eb6d30c"
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
