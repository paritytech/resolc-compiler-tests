//! {
//!   "cases": [
//!     {
//!       "name": "f1",
//!       "inputs": [
//!         {
//!           "method": "f1",
//!           "calldata": [],
//!           "caller": "0xE45995b16463A96088a365ED3205d4D43F76b4eF"
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
    uint256 public a1;
    uint256 public a2;
    uint256 public a3;

    constructor() public {
        (a1, a1, a1) = (1, 2, 3);
    }

    function f1() public returns (uint256) {
        assert(a1 == 1 && a2 == 0  && a3 == 0);
        return 0;
    }
}
