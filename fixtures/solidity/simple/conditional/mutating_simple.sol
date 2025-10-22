//! {
//!   "cases": [
//!     {
//!       "name": "conditionTrue",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1"
//!           ],
//!           "caller": "0x4b23a88181f1581b323df2ac4391dd6db1f93048"
//!         }
//!       ],
//!       "expected": [
//!         "10"
//!       ]
//!     },
//!     {
//!       "name": "conditionFalse",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0"
//!           ],
//!           "caller": "0x74db99e5a958d5991aededf61e8d63f345e0004a"
//!         }
//!       ],
//!       "expected": [
//!         "5"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(bool condition) public pure returns(uint8) {
        uint8 result = 5;

        if (condition) {
            result += 5;
        }

        return result;
    }
}
