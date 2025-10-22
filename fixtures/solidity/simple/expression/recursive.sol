//! {
//!   "modes": [
//!     "Y",
//!     "E"
//!   ],
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "f",
//!           "calldata": [
//!             "5"
//!           ],
//!           "caller": "0xb7c8e7f62eccf41a7deb17f2a2a265872eef7e19"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [
//!           "0x0100000000"
//!         ]
//!       }
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

// Report https://linear.app/matterlabs/issue/CPR-737/fix-a-test-failed-after-changing-the-inliner-configuration

pragma solidity >=0.4.12;

contract Test {
    function f(uint x) public returns (uint256 r) {
        return x == 0 ? 2 : f(x - 1)**2;
    }
}
