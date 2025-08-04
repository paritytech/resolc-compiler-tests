//! {
//!   "cases": [
//!     {
//!       "name": "zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x4518c3D2C07Dcb25d0A3A9B53Af097d35c205b36"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0xb28532A3F77E0c119C393617b1354Be2Beac4697"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x454bf1e0231A6690f8eFb281bDCB6D7b79B9bC32"
//!         }
//!       ],
//!       "expected": [
//!         "0x454bf1e0231A6690f8eFb281bDCB6D7b79B9bC32"
//!       ]
//!     },
//!     {
//!       "name": "max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x412191fc334879c403194e6D71Ed02116BD292B2"
//!         }
//!       ],
//!       "expected": [
//!         "0x412191fc334879c403194e6D71Ed02116BD292B2"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main() external payable returns(uint256 result) {
        assembly {
            result := caller()
        }
    }
}
