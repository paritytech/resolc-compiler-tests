//! {
//!   "cases": [
//!     {
//!       "name": "success",
//!       "inputs": [
//!         {
//!           "method": "#deployer",
//!           "calldata": [
//!             "7",
//!             "6",
//!             "0"
//!           ],
//!           "expected": [
//!             "Test.address"
//!           ],
//!           "caller": "0x8D5eb3641AaD87E4b43Fc1Bf9A12397cB0353213"
//!         },
//!         {
//!           "method": "get",
//!           "calldata": [],
//!           "caller": "0x8D5eb3641AaD87E4b43Fc1Bf9A12397cB0353213"
//!         }
//!       ],
//!       "expected": [
//!         "42"
//!       ]
//!     },
//!     {
//!       "name": "failure",
//!       "inputs": [
//!         {
//!           "method": "#deployer",
//!           "calldata": [
//!             "7",
//!             "6",
//!             "1"
//!           ],
//!           "caller": "0xBc564151Bd1F7943fc3E9699C2f21eE2851573C4"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "exception": true
//!       }
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0;

contract Test {
    uint256 c;

    constructor(uint256 a, uint256 b, bool shouldRevert) {
        c = a * b;
        require(!shouldRevert);
    }

    function get() public view returns (uint256) {
        return c;
    }
}
