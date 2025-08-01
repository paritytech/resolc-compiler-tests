//! {
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "get",
//!           "calldata": [],
//!           "caller": "0x9E15dC2DFAB8235140ACF54116D37098DFe1396b"
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
