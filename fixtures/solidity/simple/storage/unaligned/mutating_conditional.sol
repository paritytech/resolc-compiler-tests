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
//!           "caller": "0xdd8009631480ba0c1e4aad0784807254c7de6d4b"
//!         },
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
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
//!       "name": "false_true",
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
//!             "0",
//!             "1",
//!             "25"
//!           ],
//!           "caller": "0x7e7eab8edec69a432ad20df08599541d45a99efd"
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
//!           "caller": "0xe9f9bb5fac52389dcc1ce40e48227228779b1576"
//!         },
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "0",
//!             "25"
//!           ],
//!           "caller": "0xe9f9bb5fac52389dcc1ce40e48227228779b1576"
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
//!           "caller": "0x9a39bb17e4f1709e691fcb1588d311aec7e50932"
//!         },
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "1",
//!             "25"
//!           ],
//!           "caller": "0x9a39bb17e4f1709e691fcb1588d311aec7e50932"
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
