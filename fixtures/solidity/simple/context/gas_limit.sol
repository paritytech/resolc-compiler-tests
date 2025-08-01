//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0xB50d8D16073DB36Bd5a520f6396Be82b88854C92"
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
