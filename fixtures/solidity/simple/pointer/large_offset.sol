//! {
//!   "cases": [
//!     {
//!       "name": "complex",
//!       "inputs": [
//!         {
//!           "method": "complex",
//!           "calldata": [],
//!           "caller": "0x237b5431e14834ea9b54b92ac95f8b0d98a0c4e4"
//!         }
//!       ],
//!       "expected": [
//!         "10"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

// Report https://linear.app/matterlabs/issue/CPR-175/bug-with-pointers

pragma solidity >=0.4.16;

contract Test {
    function complex() public pure returns(uint64 result) {
        uint24 ptr = 9216 * 32; // for 9215 and less it works
        assembly {
            mstore(ptr, 10)
            result := mload(ptr)
        }
    }
}
