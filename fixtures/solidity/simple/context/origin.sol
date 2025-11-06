//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0xc70ee0a439cda27090f9341acc2c29fc5ab85296"
//!         }
//!       ],
//!       "expected": [
//!         "0xc70ee0a439cda27090f9341acc2c29fc5ab85296"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.12;

contract Test {
    function main() public returns (address) {
        address tx_origin = tx.origin;
        return tx_origin;
    }
}
