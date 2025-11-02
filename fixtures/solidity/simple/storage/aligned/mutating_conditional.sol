//! {
//!   "cases": [
//!     {
//!       "name": "false_false",
//!       "inputs": [
//!         {
//!           "method": "#deployer",
//!           "instance": "Test",
//!           "calldata": [
//!             "42"
//!           ],
//!           "caller": "0xbd611b9eec4d0b8e4624f2f908a3c4155eaeb985"
//!         },
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "0",
//!             "25"
//!           ],
//!           "caller": "0xbd611b9eec4d0b8e4624f2f908a3c4155eaeb985"
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
//!           "method": "#deployer",
//!           "instance": "Test",
//!           "calldata": [
//!             "42"
//!           ],
//!           "caller": "0xbc2f759274333b372305ffb7d94aff99870b7844"
//!         },
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "1",
//!             "25"
//!           ],
//!           "caller": "0xbc2f759274333b372305ffb7d94aff99870b7844"
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
//!           "method": "#deployer",
//!           "instance": "Test",
//!           "calldata": [
//!             "42"
//!           ],
//!           "caller": "0xb4dd4fb044056e31e721ad098a490a3a954dba84"
//!         },
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "0",
//!             "25"
//!           ],
//!           "caller": "0xb4dd4fb044056e31e721ad098a490a3a954dba84"
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
//!           "method": "#deployer",
//!           "instance": "Test",
//!           "calldata": [
//!             "42"
//!           ],
//!           "caller": "0xeba9062b8db1dfed2df5ff2f0be14b04e538afc2"
//!         },
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "1",
//!             "25"
//!           ],
//!           "caller": "0xeba9062b8db1dfed2df5ff2f0be14b04e538afc2"
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
    uint256 data;

    constructor(uint256 initialData) {
        data = initialData;
    }

    function main(bool gate_1, bool gate_2, uint8 value) public returns(uint8) {
        if (gate_1) {
            if (gate_2) {
                data = uint256(value);
            }
        }

        return uint8(data);
    }
}
