//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x273Cc93Fda6eD76De10dA2fb23780BDB47e6cB14"
//!         }
//!       ],
//!       "expected": [
//!         "$CHAIN_ID"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.5.14;

contract Test {
    function main() public returns(uint) {
        uint chainId;
        assembly {
            chainId := chainid()
        }
        return chainId;
    }
}
