//! {
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "get",
//!           "calldata": [],
//!           "caller": "0x13479CAf691072755cCAe0b4f89153f2fc441946"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

// Report https://linear.app/matterlabs/issue/CPR-610/mapping-getter-failure

contract Test {
    mapping(uint8 => uint8) public table;

    function get() public returns (uint8) {
        return this.table(0);
    }
}
