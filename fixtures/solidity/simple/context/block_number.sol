//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x8d4623c651453dfbe42071dcf0670feb298bebe9"
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
