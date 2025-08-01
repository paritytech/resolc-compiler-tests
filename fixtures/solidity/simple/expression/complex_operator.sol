//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "16"
//!           ],
//!           "caller": "0x7cDD4ac86222be4baE2a60eb1Fb279563D152280"
//!         }
//!       ],
//!       "expected": [
//!         "81"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(uint8 witness) public pure returns(uint8) {
        uint8 local1 = 3;
        uint8 local2 = 5;
        uint8 local3 = 2;

        return 19 * 3 - 8 / local1 + (witness / (local2 - 3) + 5) * (8 / local3 / 2);
    }
}
