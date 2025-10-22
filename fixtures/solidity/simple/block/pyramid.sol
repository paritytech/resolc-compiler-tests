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
//!           "caller": "0xf7edc8fa1ecc32967f827c9043fcae6ba73afa5c"
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
