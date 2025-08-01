//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x2D250e04D7c5788811842E4064Ff9EBE86Cf2014"
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
