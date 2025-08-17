//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0xd817d23c981472d703be36da777ffdb1abefd972"
//!         }
//!       ],
//!       "expected": [
//!         "55"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    uint256 constant LIMIT = 10;

    function main() public pure returns(uint256) {
        uint256 sum = 0;
        for(uint256 i = 0; i <= LIMIT; i++) {
            sum += i;
        }
        return sum;
    }
}
