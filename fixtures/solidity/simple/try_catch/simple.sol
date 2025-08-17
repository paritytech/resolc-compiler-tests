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
//!           "caller": "0x40ca26f159a74b58b7b6885f447e09ae1f384524"
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
//!           "caller": "0xaaae89b9a7847599bf53ff291986b78f9a6d176f"
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
