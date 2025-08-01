//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x508AC3EaAF975C6eac444a8549912A85cd2aF3BC"
//!         }
//!       ],
//!       "expected": [
//!         "3000000000"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.12;

contract Test {
    function main() public returns(uint) {
        uint gas_price = tx.gasprice;
        return gas_price;
    }
}
