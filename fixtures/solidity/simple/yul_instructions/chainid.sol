//! {
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0xbEDD3dB21e2efe372C62eF17E9bCD589DD856b86"
//!         }
//!       ],
//!       "expected": [
//!         "$CHAIN_ID"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.5.14;

contract Test {
    function main() external view returns(uint256 result) {
        assembly {
            result := chainid()
        }
    }
}
