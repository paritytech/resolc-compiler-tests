//! {
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x318a988a25e96ce280ba2fb9b391736a21bfb6da"
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
