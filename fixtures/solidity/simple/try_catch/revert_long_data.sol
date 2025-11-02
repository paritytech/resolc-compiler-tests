//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0xfd62b504c698cc5cd691a930e9e3a43087ee31be"
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
