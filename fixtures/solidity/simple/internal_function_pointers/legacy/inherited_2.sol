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
//!           "caller": "0xff7279b0f869c36017fc484ad22757e3be169393"
//!         },
//!         {
//!           "method": "m",
//!           "calldata": [],
//!           "caller": "0xff7279b0f869c36017fc484ad22757e3be169393"
//!         }
//!       ],
//!       "expected": [
//!         "418"
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

    function d1() internal returns (uint) {
        return 0xd1;
    }

    function getD1() internal returns (function() internal returns (uint)) {
        return d1;
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
            fp = getD1();
        }
        x = fp();
    }

    function m() public returns (uint) {
        return x + fp();
    }
}
