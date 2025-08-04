//! {
//!   "cases": [
//!     {
//!       "name": "f",
//!       "inputs": [
//!         {
//!           "method": "f",
//!           "calldata": [],
//!           "caller": "0x6401b59b98B9799BA3273F1fc0E149119fb61461"
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
    address public immutable a2;
    address public a1 = address(0xaa);

    constructor() {
        a2 = address(0xff);
        a1 = a2;
    }

    function f() public returns (address) {
        return a1;
    }
}
