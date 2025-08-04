//! {
//!   "targets": [
//!     "eravm"
//!   ],
//!   "cases": [
//!     {
//!       "name": "trycatch",
//!       "inputs": [
//!         {
//!           "method": "f",
//!           "calldata": [],
//!           "caller": "0xdc6E11f276fa27306CFd5D5cF773e1f2F6181679"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.6.5 <=0.8.19;

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
