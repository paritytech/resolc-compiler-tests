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
//!           "caller": "0xf3B79F204cb05f417ecBCA5572C0EEC9F3Bf7121"
//!         },
//!         {
//!           "method": "get",
//!           "calldata": [],
//!           "caller": "0xf3B79F204cb05f417ecBCA5572C0EEC9F3Bf7121"
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
//!           "caller": "0x1e94346A41939597DAb5626D9fEA2bA4979451e9"
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
