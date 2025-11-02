//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x2c9a24d1cec8b8a13ef60d2f9221cdbb3ce69e11"
//!         }
//!       ],
//!       "expected": [
//!         "$BLOCK_HASH:1"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.22;

contract Test {
    function main() public returns(bytes32) {
        bytes32 _blockhash = blockhash(block.number - 1);
        return _blockhash;
    }
}
