//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x7c20072451f99a60533a5bc5164bb57b3db32df2"
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
