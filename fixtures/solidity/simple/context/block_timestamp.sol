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
