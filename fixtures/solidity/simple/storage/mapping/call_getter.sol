//! {
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "get",
//!           "calldata": [],
//!           "caller": "0x545a76ad1898be2efd90b5d3f3d241c19d4929e6"
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
