//! {
//!   "targets": [
//!     "eravm"
//!   ],
//!   "modes": [
//!     "Y",
//!     "E- >=0.5.5",
//!     "E+ >=0.8.15",
//!     "I"
//!   ],
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [],
//!           "caller": "0x5DCac94426f90Bf7a8ba0a775761CC771074C8c1"
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

pragma solidity >=0.4.12;

contract Test {
    function test() external returns (uint) {
        assembly {
            mstore(64, 1000000000000)
        }
    }
}
