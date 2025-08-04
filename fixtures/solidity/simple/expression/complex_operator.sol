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
//!           "caller": "0xC168f5514D60125e620FC9BE060B2826a4Dc4C91"
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
