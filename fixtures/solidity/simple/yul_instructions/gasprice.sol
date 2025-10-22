//! {
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x545d6e242b64dce03bca937e5450c0d6c7635e18"
//!         }
//!       ],
//!       "expected": [
//!         "$TRANSACTION_GAS_PRICE"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main() external view returns (uint256 result) {
        assembly {
            result := gasprice()
        }
    }
}
