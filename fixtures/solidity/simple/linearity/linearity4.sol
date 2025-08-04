//! {
//!   "cases": [
//!     {
//!       "name": "f",
//!       "inputs": [
//!         {
//!           "method": "f",
//!           "calldata": [],
//!           "caller": "0x9e8cAB6a7704a40589B9E3ebe8574514547585F7"
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
