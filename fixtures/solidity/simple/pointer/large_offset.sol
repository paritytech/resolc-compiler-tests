//! {
//!   "cases": [
//!     {
//!       "name": "complex",
//!       "inputs": [
//!         {
//!           "method": "complex",
//!           "calldata": [],
//!           "caller": "0x2A9a2dD2FAf922A97C618e2424A12d16A932723e"
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
