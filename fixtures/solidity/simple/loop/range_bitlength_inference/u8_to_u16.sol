//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x659F929FcF609302720A5Fb5B897315768e8B1b9"
//!         }
//!       ],
//!       "expected": [
//!         "2545"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main() public pure returns(uint16) {
        uint16 sum = 0;
        for(uint16 i = 250; i < 260; i++) {
            sum += i;
        }
        return sum;
    }
}
