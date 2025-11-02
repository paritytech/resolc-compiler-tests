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
//!           "caller": "0xe9b2afa2b14a8b3e464d01a42597a1579c044110"
//!         },
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "0",
//!             "25"
//!           ],
//!           "caller": "0xe9b2afa2b14a8b3e464d01a42597a1579c044110"
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
//!           "caller": "0x87ea5230be0665be4887d399a3fa00332f600ccd"
//!         },
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "1",
//!             "25"
//!           ],
//!           "caller": "0x87ea5230be0665be4887d399a3fa00332f600ccd"
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
//!           "caller": "0xdd8009631480ba0c1e4aad0784807254c7de6d4b"
//!         },
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "0",
//!             "25"
//!           ],
//!           "caller": "0xdd8009631480ba0c1e4aad0784807254c7de6d4b"
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
//!           "caller": "0x7e7eab8edec69a432ad20df08599541d45a99efd"
//!         },
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "1",
//!             "25"
//!           ],
//!           "caller": "0x7e7eab8edec69a432ad20df08599541d45a99efd"
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
