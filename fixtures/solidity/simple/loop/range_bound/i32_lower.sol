//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x636cc65783084b9f370789c90f733dbbeb88925d"
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
        for(int32 i = -2147483648; i <= -2147483639; i++) {
            sum += 1;
        }
        return sum;
    }
}
