//! {
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0xDEB8215c510f1a779B6Cc6EEf02Ca08Cae1ea2D2"
//!         }
//!       ],
//!       "expected": [
//!         "$BLOCK_NUMBER"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main() external view returns(uint256 result) {
        assembly {
            result := number()
        }
    }
}
