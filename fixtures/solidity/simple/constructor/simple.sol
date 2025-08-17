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
//!           "caller": "0x68e527780872cda0216ba0d8fbd58b67a5d5e351"
//!         },
//!         {
//!           "method": "get",
//!           "calldata": [],
//!           "caller": "0x68e527780872cda0216ba0d8fbd58b67a5d5e351"
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
//!           "caller": "0x5a83529ff76ac5723a87008c4d9b436ad4ca7d28"
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
