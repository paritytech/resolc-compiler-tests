//! {
//!   "cases": [
//!     {
//!       "name": "one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "12"
//!           ],
//!           "caller": "0xdaF2cD86D80aAF2d338196B13F8AffDA41f6303C"
//!         }
//!       ],
//!       "expected": [
//!         "89"
//!       ]
//!     },
//!     {
//!       "name": "two",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "14"
//!           ],
//!           "caller": "0x1Abd0DAAd748Cb401b45c4653Ed06dF22Fad36d7"
//!         }
//!       ],
//!       "expected": [
//!         "233"
//!       ]
//!     },
//!     {
//!       "name": "three",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "16"
//!           ],
//!           "caller": "0x52698e92d646D56C15261f418926515b1F9a34Ae"
//!         }
//!       ],
//!       "expected": [
//!         "610"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(uint8 n) public pure returns(uint64) {
        uint64 value1 = 0;
        uint64 value2 = 1;
        uint64 fibo = value1;

        for(uint8 i = 1; i <= n - 2; i++) {
            fibo = value1 + value2;
            value1 = value2;
            value2 = fibo;
        }

        return fibo;
    }
}