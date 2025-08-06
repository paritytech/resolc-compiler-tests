//! {
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x07D5C2197B50238dd3647936d48b40263C3539ee"
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
