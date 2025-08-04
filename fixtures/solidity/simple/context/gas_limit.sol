//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x90718Aee34ED41f2ca8Ec5814510A2c5A7D6c2fc"
//!         }
//!       ],
//!       "expected": [
//!         "$GAS_LIMIT"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.12;

contract Test {
    function main() public returns(uint) {
        uint gas_limit = block.gaslimit;
        return gas_limit;
    }
}
