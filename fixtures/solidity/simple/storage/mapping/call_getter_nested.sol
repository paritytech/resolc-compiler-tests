//! {
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "g",
//!           "calldata": [],
//!           "caller": "0xEf7c48a9aC1BcE8afBa312B8A3722574158C3e72"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

// Report https://linear.app/matterlabs/issue/CPR-611/nested-external-calls-issue

contract Test {
    function h() external returns (uint256) {
        return 1;
    }

    function f() external returns (uint256) {
        return this.h();
    }

    function g() external returns (uint256) {
        return this.f();
    }
}
