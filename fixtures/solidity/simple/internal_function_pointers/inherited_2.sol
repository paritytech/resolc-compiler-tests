//! {
//!   "modes": [
//!     "Y",
//!     "E"
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
//!           "caller": "0xbedb752f262aabe55d30f77c159394011c5b49f7"
//!         },
//!         {
//!           "method": "m",
//!           "calldata": [],
//!           "caller": "0xbedb752f262aabe55d30f77c159394011c5b49f7"
//!         }
//!       ],
//!       "expected": [
//!         "418"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.22;

contract D {
    function d0() internal pure returns (uint) { return 0xd0; }

    function d1() internal pure returns (uint) { return 0xd1; }
    function getD1() internal pure returns (function() internal pure returns (uint)) {
        return d1;
    }
}

contract Test is D {
    uint x;

    function() internal pure returns (uint) fp;
    function c0() internal pure returns (uint) { return 0xc0; }

    constructor(int i) public {
        if (i == 0) { fp = c0; }
        if (i == 1) { fp = getD1(); }
        x = fp();
    }

    function m() public view returns (uint) {
        return x + fp();
    }
}
