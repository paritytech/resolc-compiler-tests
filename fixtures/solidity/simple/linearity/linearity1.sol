//! {
//!   "cases": [
//!     {
//!       "name": "f",
//!       "inputs": [
//!         {
//!           "method": "f",
//!           "calldata": [],
//!           "caller": "0xE75721D039E8D1fEAA9e59b19cE344A2B1eA6751"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.12;

contract Test {
    address public a1 = a2;
    address public a2 = address(0xff);

    function f() public returns (uint256) {
        assert(a1 == address(0));
        return 0;
    }
}
