//! {
//!   "cases": [
//!     {
//!       "name": "f",
//!       "inputs": [
//!         {
//!           "method": "f",
//!           "calldata": [],
//!           "caller": "0x37da28c050e3c0a1c0ac3be97913ec038783da4c"
//!         }
//!       ],
//!       "expected": [
//!         "0x00000000000000000000000000000000000000ff"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.8.8;

contract Test {
    address public immutable a2 = address(0xff);
    address public immutable a1;

    constructor() {
        a1 = a2;
    }

    function f() public returns (address) {
        return a1;
    }
}
