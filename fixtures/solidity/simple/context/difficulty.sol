//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x3934eea8a99f0fc4aad8dc73ecc52a5589145bea"
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
