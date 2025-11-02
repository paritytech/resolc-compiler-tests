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
//!         "$BLOCK_TIMESTAMP"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.12;

contract Test {
    function main() public returns(uint) {
        uint block_timestamp = block.timestamp;
        return block_timestamp;
    }
}
