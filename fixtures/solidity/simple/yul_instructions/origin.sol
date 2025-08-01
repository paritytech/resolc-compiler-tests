//! {
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0xD56792cD944eb7Bd6a16C234A81178EA5d6BbA83"
//!         }
//!       ],
//!       "expected": [
//!         "0x0000000000000000000000009292929292929292929292929292929292929292"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main() external view returns(uint256 result) {
        assembly {
            result := origin()
        }
    }
}
