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
//!         "0"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.22;

contract Test {
    address public a1 = a2;
    address public a2 = address(0xff);

    constructor() public {
        a2 = address(this);
    }

    function f1() public returns (uint256) {
        assert(a1 == address(0));
        return 0;
    }
}
