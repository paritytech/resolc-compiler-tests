//! {
//!   "cases": [
//!     {
//!       "name": "zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x672e8a27d77eeefed078fc86e94d8a5b2931ad79"
//!         }
//!       ],
//!       "expected": [
//!         "0x672e8a27d77eeefed078fc86e94d8a5b2931ad79"
//!       ]
//!     },
//!     {
//!       "name": "one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x2062b63c232e35a781a11ea17f702c8bf9109108"
//!         }
//!       ],
//!       "expected": [
//!         "0x2062b63c232e35a781a11ea17f702c8bf9109108"
//!       ]
//!     },
//!     {
//!       "name": "ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x9be78c68db0795f423120ecfec183d72ee43c8d7"
//!         }
//!       ],
//!       "expected": [
//!         "0x9be78c68db0795f423120ecfec183d72ee43c8d7"
//!       ]
//!     },
//!     {
//!       "name": "max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0xddbe7536de04a63c3644e9b071f0299b88678877"
//!         }
//!       ],
//!       "expected": [
//!         "0xddbe7536de04a63c3644e9b071f0299b88678877"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main() external payable returns (uint256 result) {
        assembly {
            result := caller()
        }
    }
}
