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
//!           "caller": "0x127567cf45Ccd5992C73eBDc73Ff58c55F7178A6"
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
//!           "caller": "0x4A013986248b7f791424d9170f9075b8E512eE47"
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
