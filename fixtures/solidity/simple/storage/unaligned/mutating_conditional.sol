//! {
//!   "cases": [
//!     {
//!       "name": "false_false",
//!       "inputs": [
//!         {
//!           "method": "setStorage",
//!           "calldata": [
//!             "42"
//!           ],
//!           "caller": "0x3fee306D4DF4F9239B7Eb676f06A8D7884e14C1b"
//!         },
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "0",
//!             "25"
//!           ],
//!           "caller": "0x3fee306D4DF4F9239B7Eb676f06A8D7884e14C1b"
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
//!           "method": "setStorage",
//!           "calldata": [
//!             "42"
//!           ],
//!           "caller": "0x97bc118c7c1e216220F765006B39C9e64f2B1eb7"
//!         },
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "1",
//!             "25"
//!           ],
//!           "caller": "0x97bc118c7c1e216220F765006B39C9e64f2B1eb7"
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
//!           "method": "setStorage",
//!           "calldata": [
//!             "42"
//!           ],
//!           "caller": "0x102544497093a75bb0a9DfF75c5ad321ef7dC3a7"
//!         },
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "0",
//!             "25"
//!           ],
//!           "caller": "0x102544497093a75bb0a9DfF75c5ad321ef7dC3a7"
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
//!           "method": "setStorage",
//!           "calldata": [
//!             "42"
//!           ],
//!           "caller": "0xC9104Fa484fB5f9e82A5A3313F356c88DE7d6Cc6"
//!         },
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "1",
//!             "25"
//!           ],
//!           "caller": "0xC9104Fa484fB5f9e82A5A3313F356c88DE7d6Cc6"
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

    function setStorage(uint256 newStorage) public {
        assembly {
            sstore(0, newStorage)
        }
    }

    function main(bool gate_1, bool gate_2, uint8 value) public returns(uint8) {
        if (gate_1) {
            if (gate_2) {
                data = value;
            }
        }

        return data;
    }
}
