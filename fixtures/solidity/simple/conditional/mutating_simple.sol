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
//!           "caller": "0xbc0190e783bbd43f634079c38dda56958ab5d2c7"
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
//!           "caller": "0x4b23a88181f1581b323df2ac4391dd6db1f93048"
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
