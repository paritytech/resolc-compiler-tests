//! {
//!   "cases": [
//!     {
//!       "name": "first",
//!       "inputs": [
//!         {
//!           "method": "entry",
//!           "calldata": [
//!             "0"
//!           ],
//!           "caller": "0xaaae89b9a7847599bf53ff291986b78f9a6d176f"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "second",
//!       "inputs": [
//!         {
//!           "method": "entry",
//!           "calldata": [
//!             "1"
//!           ],
//!           "caller": "0xc514a69465f97d2f4086cc2d465addd3d2810a85"
//!         }
//!       ],
//!       "expected": [
//!         "2"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0;

contract Test {
    function f(bool a) public pure {
        require(!a);
    }

    function entry(bool a) public view returns(uint) {
        try this.f(a) {
            return 1;
        } catch {
            return 2;
        }
    }
}
