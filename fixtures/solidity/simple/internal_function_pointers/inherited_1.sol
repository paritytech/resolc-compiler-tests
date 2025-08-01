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
//!           "caller": "0x530d1fd8d252A9c6690C422495A660aB1fF3a680"
//!         },
//!         {
//!           "method": "m",
//!           "calldata": [],
//!           "caller": "0x530d1fd8d252A9c6690C422495A660aB1fF3a680"
//!         }
//!       ],
//!       "expected": [
//!         "416"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.22;

contract D {
    function d0() internal pure returns (uint) { return 0xd0; }
}

contract Test is D {
    uint x;

    function() internal pure returns (uint) fp;
    function c0() internal pure returns (uint) { return 0xc0; }

    constructor(int i) public {
      if (i == 0) { fp = c0; }
      if (i == 1) { fp = d0; }
      x = fp();
    }

    function m() public view returns (uint) {
      return x + fp();
    }
}
