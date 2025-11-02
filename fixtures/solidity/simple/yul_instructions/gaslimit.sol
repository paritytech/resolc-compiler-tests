//! {
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x8c2662b0432442d94b013d4e0fe0a51100e34ac2"
//!         }
//!       ],
//!       "expected": [
//!         "$GAS_LIMIT"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main() external view returns(uint256 result) {
        assembly {
            result := gaslimit()
        }
    }
}
