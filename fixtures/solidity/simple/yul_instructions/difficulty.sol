//! {
//!   "modes": [
//!     "Y =0.8.17",
//!     "E =0.8.17"
//!   ],
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x12ccdd526f3251fcbf48ca8a807115ce95515b7b"
//!         }
//!       ],
//!       "expected": [
//!         "$DIFFICULTY"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16 <=0.8.17;

contract Test {
    function main() external view returns (uint256 result) {
        assembly {
            result := difficulty()
        }
    }
}
