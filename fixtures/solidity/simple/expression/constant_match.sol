//! {
//!   "cases": [
//!     {
//!       "name": "one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42"
//!           ],
//!           "caller": "0xA2138aA111CA9e61DdB70d31C868246eaf44C162"
//!         }
//!       ],
//!       "expected": [
//!         "58"
//!       ]
//!     },
//!     {
//!       "name": "two",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "100"
//!           ],
//!           "caller": "0x8C66B1c5671512F4c8a9229a636e9AD8197948D7"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    uint8 constant SCRUTINEE = 42;

    function main(uint8 witness) public pure returns(uint8) {
        uint8 _match;
        if (SCRUTINEE == 0) {
            _match = 10;
        } else if (SCRUTINEE == 1) {
            _match = 20;
        } else if (SCRUTINEE == 42) {
            _match = 100;
        } else {
            _match = 255 - SCRUTINEE;
        }
        return _match - witness;
    }
}
