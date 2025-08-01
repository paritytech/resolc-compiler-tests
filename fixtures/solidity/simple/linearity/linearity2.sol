//! {
//!   "cases": [
//!     {
//!       "name": "f",
//!       "inputs": [
//!         {
//!           "method": "f",
//!           "calldata": [],
//!           "caller": "0x3B46d71636278C3fe3634D00Bb84EbEB051B5d30"
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
