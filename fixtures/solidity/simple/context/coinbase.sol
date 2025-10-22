//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x338eaaaf9cf24b9637a37a1006ce2ef371023e4e"
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
