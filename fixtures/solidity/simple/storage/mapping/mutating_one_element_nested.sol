//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0xdc4356ea375bFD74679AdCD1c0C05C5487397D59"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

// Report https://linear.app/matterlabs/issue/CPR-222/fix-failures-of-the-mapping-tests-from-the-solidity-repo

pragma solidity >=0.4.16;

contract Test {
    mapping(uint => mapping(uint => uint)) twodim;
    
    function main() public returns (uint a) {
        twodim[2][3] = 3;
        a = twodim[3][2];
    }
}
