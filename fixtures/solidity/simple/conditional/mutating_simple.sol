//! {
//!   "cases": [
//!     {
//!       "name": "conditionTrue",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1"
//!           ],
//!           "caller": "0x50041c7600EC52AFA9cAf815C84d45Cb0A483B09"
//!         }
//!       ],
//!       "expected": [
//!         "10"
//!       ]
//!     },
//!     {
//!       "name": "conditionFalse",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0"
//!           ],
//!           "caller": "0x3fEfD204C84A42197132D8a0Db04544df715D84F"
//!         }
//!       ],
//!       "expected": [
//!         "5"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(bool condition) public pure returns(uint8) {
        uint8 result = 5;

        if (condition) {
            result += 5;
        }

        return result;
    }
}
