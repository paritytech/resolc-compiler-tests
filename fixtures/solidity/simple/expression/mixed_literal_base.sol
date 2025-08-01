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
//!           "caller": "0xc98E4Fd64Dc8862B2EE6287C21b20A13bD01279E"
//!         }
//!       ],
//!       "expected": [
//!         "210"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(uint8 witness) public pure returns(uint8) {
        return uint8(witness + 42e0 + 0x2a + 42 + 0x2A);
    }
}
