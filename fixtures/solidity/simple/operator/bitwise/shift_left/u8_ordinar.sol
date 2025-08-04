//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42"
//!           ],
//!           "caller": "0x0d9a3f471469a1C8F19f61cf65c601AA1E7F5AB5"
//!         }
//!       ],
//!       "expected": [
//!         "168"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(uint8 a) public pure returns(uint8) {
        return a << 2;
    }
}
