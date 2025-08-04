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
//!           "caller": "0x5DDEE6e215ffED187471cB8Aa8790ADe03df7e7B"
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
//!           "caller": "0xD949625D9c26B19320c1196e7A92C138928671c3"
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
//!           "caller": "0x47bfE066D1Fb0ED995Ab6BEcf47750B1a4babDF8"
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