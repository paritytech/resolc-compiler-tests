//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "4"
//!           ],
//!           "caller": "0xFfd2C4c923a0bFCBAbe3F6E77621de056d1c4967"
//!         }
//!       ],
//!       "expected": [
//!         "16"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(uint8 witness) public pure returns(uint8) {
        return
        1 + (
            2 + (
                3 + (
                    witness
                ) + 3
            ) + 2
        ) + 1;
    }
}
