//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x48aD7FB7d2580889a5A0fFdA582520f9F4F7588B"
//!         }
//!       ],
//!       "expected": [
//!         "$CHAIN_ID"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

contract Test {
    function main() public returns(uint) {
        uint chainId = block.chainid;
        return chainId;
    }
}
