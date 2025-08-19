//! {
//!   "modes": [
//!     "Y =0.8.17",
//!     "E =0.8.17"
//!   ],
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x067552d1be7a0a5266d11565e7138d8c165cad02"
//!         }
//!       ],
//!       "expected": [
//!         "$DIFFICULTY"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16 <=0.8.17;

contract Test {
    function main() external view returns (uint256 result) {
        assembly {
            result := difficulty()
        }
    }
}
