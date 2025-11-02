//! {
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "get",
//!           "calldata": [],
//!           "caller": "0xeb069b37121b304db63e6dab6f5df4d7ca339108"
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
