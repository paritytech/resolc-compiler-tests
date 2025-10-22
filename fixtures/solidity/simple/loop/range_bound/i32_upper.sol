//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x093d49d617a10f26915553255ec3fee532d2c12f"
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
