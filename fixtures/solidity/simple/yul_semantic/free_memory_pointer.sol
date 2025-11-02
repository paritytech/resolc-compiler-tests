//! {
//!   "targets": [
//!     "eravm"
//!   ],
//!   "modes": [
//!     "Y",
//!     "E- >=0.5.5",
//!     "E+ >=0.8.15"
//!   ],
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [],
//!           "caller": "0x0c33ae69f5115b3dcabf73320bf2e272cd370d19"
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
