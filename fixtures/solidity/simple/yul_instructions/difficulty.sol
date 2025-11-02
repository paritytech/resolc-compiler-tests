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
//!           "caller": "0xa6ce0165f01fccb751c401f1bcbb2f96c522c88a"
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
