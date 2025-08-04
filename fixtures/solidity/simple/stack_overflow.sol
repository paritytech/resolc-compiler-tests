//! {
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "f",
//!           "calldata": [],
//!           "caller": "0x09d8FCbf93c0792103438489dAC48A34a72b297f"
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
