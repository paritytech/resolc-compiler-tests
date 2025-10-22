//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x8a4e1f5793c4e8f061c30b6e8f58618023cb9742"
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
