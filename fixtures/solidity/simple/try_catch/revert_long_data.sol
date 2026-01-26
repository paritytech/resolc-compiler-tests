//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0xfd62b504c698cc5cd691a930e9e3a43087ee31be",
//!           "gas_overrides": {
//!             "revive-dev-node-polkavm-resolc": {
//!               "gas_limit": 10000000
//!             }
//!           },
//!           "comment": "A hard-coded gas limit is required in order to get this test to pass since dry running fails. TODO: Remove when this is fixed."
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
        try this.f{gas: (gasleft() * 63) / 64}() {
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
