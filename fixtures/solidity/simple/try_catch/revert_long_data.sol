//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x99053AC6d944EE38835765981aA8b7a31f0d4c20"
//!         }
//!       ],
//!       "expected": [
//!         "0x0000000000000000000000000000000000000000000000000000000000000020",
//!         "0x0000000000000000000000000000000000000000000000000000000000000000"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0;

contract Test {
    function main() public returns (bytes memory) {
        try this.f() {
            return "TRUE";
        } catch (bytes memory reason) {
            return reason;
        }
    }

    function f() external {
        assembly {
            revert(0, 320000000000000000000000)
        }
    }
}
