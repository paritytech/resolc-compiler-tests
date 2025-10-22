//! {
//!   "cases": [
//!     {
//!       "name": "f",
//!       "inputs": [
//!         {
//!           "method": "f",
//!           "calldata": [],
//!           "caller": "0x4309dfb5ee7b9cb8c720e7bae45183f74d54286a"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

// Report https://linear.app/matterlabs/issue/CPR-215/solidity-dynamic-array-length-bug

pragma solidity >=0.4.16;

contract Test {
    function f() public returns (uint256) {
        uint256[][] memory x = new uint256[][](42);
        assert(x[0].length == 0);
        return 0;
    }
}
