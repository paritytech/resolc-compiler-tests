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
//!           "caller": "0x24B48e339653B8CB89a82641c46FC6B6A64F206C"
//!         },
//!         {
//!           "method": "get",
//!           "calldata": [],
//!           "caller": "0x24B48e339653B8CB89a82641c46FC6B6A64F206C"
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
