//! {
//!   "cases": [
//!     {
//!       "name": "first",
//!       "inputs": [
//!         {
//!           "method": "first",
//!           "calldata": [],
//!           "caller": "0x2face249ec68cdff5e532e98f8bcf2d1a1d8b770"
//!         }
//!       ],
//!       "expected": [
//!         "42"
//!       ]
//!     },
//!     {
//!       "name": "second",
//!       "inputs": [
//!         {
//!           "method": "second",
//!           "calldata": [],
//!           "caller": "0x97def6fbd5b6586db323027fa755be7d788d642a"
//!         }
//!       ],
//!       "expected": [
//!         "42"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function first() public pure returns(uint256) {
        return main(84, 2, 43) + main(23, 23, 42) - main(22, 2, 3);
    }

    function second() public pure returns(uint256) {
        return main(15, 10, 43) + main(30, 10, 42) - main(3, 1, 3);
    }

    function main(uint256 a, uint256 b, uint256 c) private pure returns(uint256) {
        if (c > 42) {
            return a + b;
        }
        if (c == 42) {
            return a - b;
        }
        return a * b;
    }
}
