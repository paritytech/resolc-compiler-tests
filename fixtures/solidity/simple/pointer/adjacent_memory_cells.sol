//! {
//!   "cases": [
//!     {
//!       "name": "_default",
//!       "inputs": [
//!         {
//!           "method": "_default",
//!           "calldata": [],
//!           "caller": "0xa8840243c6fcbd8104f7ce92fa32be0a2172a531"
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
    function _default() public pure returns(uint8 result) {
        uint16 ptr = 42 * 32;
        assembly {
            mstore(add(ptr, 0x20), 0)
            mstore(add(ptr, 0x40), 42)
            mstore(add(ptr, 0x60), 0)

            result := add(mload(add(ptr, 0x20)), add(mload(add(ptr, 0x40)), mload(add(ptr, 0x60))))
        }
    }
}