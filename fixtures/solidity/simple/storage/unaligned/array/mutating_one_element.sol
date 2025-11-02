//! {
//!   "cases": [
//!     {
//!       "name": "complex",
//!       "inputs": [
//!         {
//!           "method": "setStorage",
//!           "calldata": [
//!             "1"
//!           ],
//!           "caller": "0x620bf42019d2438652ffb015762d01e32c62b2e0"
//!         },
//!         {
//!           "method": "complex",
//!           "calldata": [],
//!           "caller": "0x620bf42019d2438652ffb015762d01e32c62b2e0"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

// Report https://linear.app/matterlabs/issue/CPR-210/error-with-solidity-constants

pragma solidity >=0.4.16;

contract Test {
    uint8[1] KEY = [1];

    function setStorage(uint256 newStorage) public {
        assembly {
            sstore(0, newStorage)
        }
    }

    function complex() public view returns(uint8) {
        return KEY[0];
    }
}