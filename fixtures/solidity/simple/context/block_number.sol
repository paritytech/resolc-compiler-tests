//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x1aCe423e35eD038698E8BA316F53B9CFc99C9822"
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
