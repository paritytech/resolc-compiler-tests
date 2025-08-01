//! {
//!   "cases": [
//!     {
//!       "name": "remainder_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "15"
//!           ],
//!           "caller": "0x3980C2c76B360ff0A0A90E18ec8B7749F0AeaB1d"
//!         }
//!       ],
//!       "expected": [
//!         "5"
//!       ]
//!     },
//!     {
//!       "name": "remainder_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "22"
//!           ],
//!           "caller": "0x397B66B893d380685Dd62EDc12D420Ae8d144461"
//!         }
//!       ],
//!       "expected": [
//!         "7"
//!       ]
//!     },
//!     {
//!       "name": "remainder_two",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "26"
//!           ],
//!           "caller": "0xF64bFf3982925D40E107Ac8EDCB033816DBA2e38"
//!         }
//!       ],
//!       "expected": [
//!         "8"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    uint8 constant CONST = 3;

    function main(uint32 witness) public pure returns(uint32) {
        return witness / uint32(CONST);
    }
}
