//! {
//!   "cases": [
//!     {
//!       "name": "false_false",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "0",
//!             "25"
//!           ],
//!           "storage": {
//!             "Test.address": [
//!               "42"
//!             ]
//!           },
//!           "caller": "0x8c5228C6F4f6CA47b280D36F01c2cCa8D083a31D"
//!         }
//!       ],
//!       "expected": [
//!         "42"
//!       ]
//!     },
//!     {
//!       "name": "false_true",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "1",
//!             "25"
//!           ],
//!           "storage": {
//!             "Test.address": [
//!               "42"
//!             ]
//!           },
//!           "caller": "0xc70eE0a439CdA27090F9341aCc2C29fC5AB85296"
//!         }
//!       ],
//!       "expected": [
//!         "42"
//!       ]
//!     },
//!     {
//!       "name": "true_false",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "0",
//!             "25"
//!           ],
//!           "storage": {
//!             "Test.address": [
//!               "42"
//!             ]
//!           },
//!           "caller": "0xB41728F81b765f71C514dFa7B0948DfF9f584c3C"
//!         }
//!       ],
//!       "expected": [
//!         "42"
//!       ]
//!     },
//!     {
//!       "name": "true_true",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "1",
//!             "25"
//!           ],
//!           "storage": {
//!             "Test.address": [
//!               "42"
//!             ]
//!           },
//!           "caller": "0x6824c9580F33e9180A8c14A9eB9f7A6260878478"
//!         }
//!       ],
//!       "expected": [
//!         "25"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    uint8 data;

    function main(bool gate_1, bool gate_2, uint8 value) public returns(uint8) {
        if (gate_1) {
            if (gate_2) {
                data = value;
            }
        }

        return data;
    }
}
