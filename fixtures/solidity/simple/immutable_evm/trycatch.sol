//! {
//!   "targets": [
//!     "evm"
//!   ],
//!   "modes": [
//!     "Y =0.8.19"
//!   ],
//!   "cases": [
//!     {
//!       "name": "trycatch",
//!       "inputs": [
//!         {
//!           "method": "f",
//!           "calldata": [],
//!           "caller": "0x4f0e9050D92f342952b3f24179e25dF6C2c11520"
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
