//! {
//!   "cases": [
//!     {
//!       "name": "zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0"
//!           ],
//!           "caller": "0x0248feE0aDC2fE831E49504E854ea2d9fe410fB5"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_positive",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "4"
//!           ],
//!           "caller": "0x08E923748DFb84CddBCf0f4cAfB2132F43e5740e"
//!         }
//!       ],
//!       "expected": [
//!         "81"
//!       ]
//!     },
//!     {
//!       "name": "to_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "80"
//!           ],
//!           "caller": "0xa8840243c6FCbd8104f7Ce92fa32be0a2172a531"
//!         }
//!       ],
//!       "expected": [
//!         "147808829414345923316083210206383297601"
//!       ]
//!     },
//!     {
//!       "name": "overflow",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "100"
//!           ],
//!           "caller": "0xD1a4142e58690aD49d27Cf4730247138b2c20512"
//!         }
//!       ],
//!       "expected": [
//!         {
//!           "compiler_version": "<0.8",
//!           "return_data": [
//!             "137198176105529391099388226870764377041"
//!           ],
//!           "exception": false
//!         },
//!         {
//!           "compiler_version": ">=0.8",
//!           "return_data": [
//!             "0x4E487B7100000000000000000000000000000000000000000000000000000000",
//!             "0x0000001100000000000000000000000000000000000000000000000000000000"
//!           ],
//!           "exception": true
//!         }
//!       ]
//!     },
//!     {
//!       "name": "overflow_minimal",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "81"
//!           ],
//!           "caller": "0xb820dAa430F5ceD02fC3BE3b7E7Fe06049836F1D"
//!         }
//!       ],
//!       "expected": [
//!         {
//!           "compiler_version": "<0.8",
//!           "return_data": [
//!             "-103144121322099306484875023187381681347"
//!           ],
//!           "exception": false
//!         },
//!         {
//!           "compiler_version": ">=0.8",
//!           "return_data": [
//!             "0x4E487B7100000000000000000000000000000000000000000000000000000000",
//!             "0x0000001100000000000000000000000000000000000000000000000000000000"
//!           ],
//!           "exception": true
//!         }
//!       ]
//!     },
//!     {
//!       "name": "max_pow_overflow",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "340282366920938463463374607431768211455"
//!           ],
//!           "caller": "0xF99f2e306a282A64b666D6E3c6983432b9ddeE73"
//!         }
//!       ],
//!       "expected": [
//!         {
//!           "compiler_version": "<0.8",
//!           "return_data": [
//!             "113427455640312821154458202477256070485"
//!           ],
//!           "exception": false
//!         },
//!         {
//!           "compiler_version": ">=0.8",
//!           "return_data": [
//!             "0x4E487B7100000000000000000000000000000000000000000000000000000000",
//!             "0x0000001100000000000000000000000000000000000000000000000000000000"
//!           ],
//!           "exception": true
//!         }
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0;

contract Test {
    function main(uint128 a) public pure returns(int128) {
        return int128(-3) ** a;
    }
}
