//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x53ec2ea671c6b5f4c95463921ea160b09df1ad85"
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
