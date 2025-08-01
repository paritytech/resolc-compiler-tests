//! {
//!   "targets": [
//!     "evm"
//!   ],
//!   "cases": [
//!     {
//!       "name": "trycatch",
//!       "inputs": [
//!         {
//!           "method": "f",
//!           "calldata": [],
//!           "caller": "0xAE274f87F0eCEc5c9C06Be1F08628a5aF920E9bF"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0 <=0.8.19;

contract Test {
    uint256 public immutable Temp;

    constructor() public {
        Test2 con = new Test2();
        try con.f2() {
            Temp = 5;
        } catch {}
    }

    function f() public returns (uint256) {
        return Temp;
    }
}

contract Test2 {
    function f2() public pure {
        revert();
    }
}
