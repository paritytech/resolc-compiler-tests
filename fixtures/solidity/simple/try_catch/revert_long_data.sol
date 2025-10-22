//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0xbd39bd58df6e31b4d89063ee59538b290f2d08c5"
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
