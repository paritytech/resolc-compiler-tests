//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x32e77de0d74a5c7af861aaed324c6a4c488142a8"
//!         }
//!       ],
//!       "expected": [
//!         "10"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main() public pure returns(uint64) {
        uint64 sum = 0;
        //using uint32 instead int32
        for(uint32 i = 2147483637; i <= 2147483646; i++) {
            sum += 1;
        }
        return sum;
    }
}
