//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "50"
//!           ],
//!           "caller": "0x58F533E9756b69525299880f988c5BEc4959ddFf"
//!         }
//!       ],
//!       "expected": [
//!         "75"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(uint8 witness) public pure returns(uint8) {
        uint8 inner = 25;
        {
            inner += witness;
        }
        return inner;
    }
}
