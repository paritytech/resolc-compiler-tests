//! {
//!   "cases": [
//!     {
//!       "name": "success",
//!       "inputs": [
//!         {
//!           "method": "#deployer",
//!           "calldata": [
//!             "5",
//!             "42"
//!           ],
//!           "expected": [
//!             "Test.address"
//!           ],
//!           "caller": "0x8a398504e8d84B6D8325AbDeD7BC9ba3b2C36E48"
//!         },
//!         {
//!           "method": "get",
//!           "calldata": [],
//!           "caller": "0x8a398504e8d84B6D8325AbDeD7BC9ba3b2C36E48"
//!         }
//!       ],
//!       "expected": [
//!         "42"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0;

contract Test {
    uint256 x;
    uint256 y;

    constructor(uint256 a, uint256 b) {
        x = a;
        set(b);
    }

    function set(uint256 b) public {
        y = b;
    }

    function get() public view returns (uint256) {
        return y;
    }
}
