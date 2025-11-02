//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x53ec2ea671c6b5f4c95463921ea160b09df1ad85"
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
