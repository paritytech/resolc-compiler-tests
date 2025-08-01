//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x07c509350740B09d04f53ADd6a0616d01cEAe463"
//!         }
//!       ],
//!       "expected": [
//!         "$BLOCK_NUMBER"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.12;

contract Test {
    function main() public returns(uint) {
        uint block_number = block.number;
        return block_number;
    }
}
