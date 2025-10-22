//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x2c9a24d1cec8b8a13ef60d2f9221cdbb3ce69e11"
//!         }
//!       ],
//!       "expected": [
//!         "$DIFFICULTY"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.12;

contract Test {
    function main() public returns(uint) {
        uint _difficulty = block.difficulty;
        return _difficulty;
    }
}
