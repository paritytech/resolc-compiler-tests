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
//!           "caller": "0xb530E25c04Bfe5404045BA15f1A2fb86bfcFA440"
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
//!           "caller": "0x3C8d99F8cB706EA45730A32e8F356c0d453Fc5AD"
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
