//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x1bdb63f2187012699c444b21cae2416b06f3eb05"
//!         }
//!       ],
//!       "expected": [
//!         "$COINBASE"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.12;

contract Test {
    function main() public returns(address) {
        address coin_base = block.coinbase;
        return coin_base;
    }
}
