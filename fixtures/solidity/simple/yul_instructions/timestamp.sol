//! {
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x44cb2398de44872bef7570c634aca4036394f747"
//!         }
//!       ],
//!       "expected": [
//!         "$BLOCK_TIMESTAMP"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main() external view returns(uint256 result) {
        assembly {
            result := timestamp()
        }
    }
}
