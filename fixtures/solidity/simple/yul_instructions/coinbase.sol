//! {
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x0ed230ab86cb615fcc86eda28657ebf322b8c77d"
//!         }
//!       ],
//!       "expected": [
//!         "$COINBASE"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main() external view returns(uint256 result) {
        assembly {
            result := coinbase()
        }
    }
}
