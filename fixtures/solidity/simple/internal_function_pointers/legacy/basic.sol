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
//!           "caller": "0xa237bd223fdae75de642380c768324b70b5af5ce"
//!         },
//!         {
//!           "method": "m",
//!           "calldata": [],
//!           "caller": "0xa237bd223fdae75de642380c768324b70b5af5ce"
//!         }
//!       ],
//!       "expected": [
//!         "386"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity <=0.4.21;

contract Test {
    uint x;

    function() internal returns (uint) fp;

    function c0() internal returns (uint) {
        return 0xc0;
    }

    function c1() internal returns (uint) {
        return 0xc1;
    }

    function Test(int i) public {
        if (i == 0) {
            fp = c0;
        }
        if (i == 1) {
            fp = c1;
        }
        x = fp();
    }

    function m() public returns (uint) {
        return x + fp();
    }
}
