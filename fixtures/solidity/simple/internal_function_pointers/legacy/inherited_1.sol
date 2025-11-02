//! {
//!   "modes": [
//!     "Y =0.4.21",
//!     "E =0.4.21"
//!   ],
//!   "cases": [
//!     {
//!       "name": "success",
//!       "inputs": [
//!         {
//!           "method": "#deployer",
//!           "calldata": [
//!             "1"
//!           ],
//!           "expected": [
//!             "Test.address"
//!           ],
//!           "caller": "0xf0dfc0e20503dcd32309d26ebf6a1e7e7c71ddff"
//!         },
//!         {
//!           "method": "m",
//!           "calldata": [],
//!           "caller": "0xf0dfc0e20503dcd32309d26ebf6a1e7e7c71ddff"
//!         }
//!       ],
//!       "expected": [
//!         "416"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity <=0.4.21;

contract D {
    function d0() internal returns (uint) {
        return 0xd0;
    }
}

contract Test is D {
    uint x;

    function() internal returns (uint) fp;

    function c0() internal returns (uint) {
        return 0xc0;
    }

    function Test(int i) public {
        if (i == 0) {
            fp = c0;
        }
        if (i == 1) {
            fp = d0;
        }
        x = fp();
    }

    function m() public returns (uint) {
        return x + fp();
    }
}
