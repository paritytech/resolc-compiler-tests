//! {
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0xc8450122c7629e4870bae26713cf80b164be6fcc"
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
