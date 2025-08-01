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
//!           "caller": "0x650eb616d4dcAdb10021A27E27c442Bd02732664"
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
//!           "caller": "0x823A090Dc5c3b9358dB5658a35AF893c0Ba96d0F"
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
