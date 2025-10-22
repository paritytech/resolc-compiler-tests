//! {
//!   "targets": [
//!     "eravm"
//!   ],
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0xbebae81aff55f9538bf1f2894c415a4d9fddc59f"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

contract Test {
    function main() public returns (bool) {
        try new Test2() returns (Test2 ins) {
            return true;
        } catch {
            return false;
        }
    }
}

contract Test2 {
    constructor() {
        assembly {
            return(0, 32000000000000000000000000000000000000000000)
        }
    }
}
