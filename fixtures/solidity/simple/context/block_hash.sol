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
