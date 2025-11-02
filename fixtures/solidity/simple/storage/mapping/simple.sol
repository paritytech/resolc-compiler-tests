//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "100500",
//!             "16"
//!           ],
//!           "caller": "0x7c20072451f99a60533a5bc5164bb57b3db32df2"
//!         }
//!       ],
//!       "expected": [
//!         "64"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    mapping (uint256 => uint256) data;

    function main(uint256 key, uint256 value) public returns(uint256) {
        data[key] = value * 4;
        return data[key];
    }
}
