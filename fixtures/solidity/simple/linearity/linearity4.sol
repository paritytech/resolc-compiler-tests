//! {
//!   "cases": [
//!     {
//!       "name": "f",
//!       "inputs": [
//!         {
//!           "method": "f",
//!           "calldata": [],
//!           "caller": "0xf7f9cd772eC5f509287d08c21c5d97Ec3e4b7CdF"
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
