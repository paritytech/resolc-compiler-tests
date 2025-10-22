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
//!           "caller": "0x5a83529ff76ac5723a87008c4d9b436ad4ca7d28"
//!         },
//!         {
//!           "method": "get",
//!           "calldata": [],
//!           "caller": "0x5a83529ff76ac5723a87008c4d9b436ad4ca7d28"
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
//!           "caller": "0x8735015837bd10e05d9cf5ea43a2486bf4be156f"
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
