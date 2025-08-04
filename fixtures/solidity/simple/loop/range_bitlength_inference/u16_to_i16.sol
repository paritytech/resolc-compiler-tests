//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0xA085dF6acf1ceF513027EbB538b8A39Be67448B0"
//!         }
//!       ],
//!       "expected": [
//!         "-200"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main() public pure returns(int16) {
        int16 sum = 0;
        for(int16 i = -200; i < 200; i++) {
            sum += i;
        }
        return sum;
    }
}
