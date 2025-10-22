//! {
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0xaba55a9f10fb8a53ff4b5b87070903fae5f35fde"
//!         }
//!       ],
//!       "expected": [
//!         "0x000000000000000000000000aba55a9f10fb8a53ff4b5b87070903fae5f35fde"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main() external view returns (uint256 result) {
        assembly {
            result := origin()
        }
    }
}
