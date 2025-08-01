//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x6F842Ae9cB20C855dE5364A360cabe8f167dd369"
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
