//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x6bdac4510e0346e63c241916b9dbd6a49a06df32"
//!         }
//!       ],
//!       "expected": [
//!         "$TRANSACTION_GAS_PRICE"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.12;

contract Test {
    function main() public returns (uint) {
        uint gas_price = tx.gasprice;
        return gas_price;
    }
}
