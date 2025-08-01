//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x22E7924e8D1c843e0a238D3Bd99a89287B77d853"
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
