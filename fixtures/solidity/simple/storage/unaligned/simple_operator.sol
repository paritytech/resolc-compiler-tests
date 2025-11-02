//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "setStorage",
//!           "calldata": [
//!             "0x0000000000000000000000000000000000000000000000000000000000020503"
//!           ],
//!           "caller": "0xb3a8822b06e9eed9b1b2b8bdca82dc414a728b15"
//!         },
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "12"
//!           ],
//!           "caller": "0xb3a8822b06e9eed9b1b2b8bdca82dc414a728b15"
//!         }
//!       ],
//!       "expected": [
//!         "42"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    uint8 field_1;
    uint8 field_2;
    uint8 field_3;

    function setStorage(bytes32 newStorage) public {
        assembly {
            sstore(0, newStorage)
        }
    }

    function main(uint8 witness) public returns(uint8) {
        return witness + field_1 * field_2 * field_3;
    }
}
