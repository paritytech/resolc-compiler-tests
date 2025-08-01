//! {
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0xF6b00AF6035E93b2A275BBfE7df21fB3F984E521"
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
    function main() external view returns(uint256 result) {
        assembly {
            result := difficulty()
        }
    }
}
