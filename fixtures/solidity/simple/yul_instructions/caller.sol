//! {
//!   "cases": [
//!     {
//!       "name": "zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x4C0D3baFb067666157C913De930e9ee968eb2FB2"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x0190c6fD4657751431190737163DE630FD61c12E"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x49154729eB045C1FcbBb08A69710fB2D7EF4f241"
//!         }
//!       ],
//!       "expected": [
//!         "0x49154729eB045C1FcbBb08A69710fB2D7EF4f241"
//!       ]
//!     },
//!     {
//!       "name": "max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0xA77E4B01722b6ec8690665F26A1A636CB259f804"
//!         }
//!       ],
//!       "expected": [
//!         "0xA77E4B01722b6ec8690665F26A1A636CB259f804"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main() external payable returns(uint256 result) {
        assembly {
            result := caller()
        }
    }
}
