//! {
//!   "cases": [
//!     {
//!       "name": "entry",
//!       "inputs": [
//!         {
//!           "method": "entry",
//!           "calldata": [],
//!           "caller": "0xf65ac7003e905d72c666bfec1dc0960ecc9d0d6e"
//!         }
//!       ],
//!       "expected": [
//!         "3"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function entry() public pure returns(uint256) {
        bool end = true;

        uint256 sum = 0;
        for (uint8 i = 1; i <= 2; i++) {
            sum += i;

            if (!end) {
                break;
            }
        }

        return sum;
    }
}
