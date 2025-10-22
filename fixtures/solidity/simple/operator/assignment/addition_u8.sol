//! {
//!   "cases": [
//!     {
//!       "name": "zero_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "0"
//!           ],
//!           "caller": "0x5d508031b360129df797e01a2d3d4332289b4d01"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42",
//!             "25"
//!           ],
//!           "caller": "0xd9f702a4a8b339af4bbcb948ca7c6c7035a0737a"
//!         }
//!       ],
//!       "expected": [
//!         "67"
//!       ]
//!     },
//!     {
//!       "name": "to_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "100",
//!             "155"
//!           ],
//!           "caller": "0x72519c1d8f3b9c11d536cecbf57f23e5ae7f087c"
//!         }
//!       ],
//!       "expected": [
//!         "255"
//!       ]
//!     },
//!     {
//!       "name": "overflow",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "100",
//!             "200"
//!           ],
//!           "caller": "0x71643160cb2e89efc62a52bb42987a2195ad0289"
//!         }
//!       ],
//!       "expected": [
//!         {
//!           "compiler_version": "<0.8",
//!           "return_data": [
//!             "44"
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
//!             "100",
//!             "156"
//!           ],
//!           "caller": "0xa108fc69944021455777655f9adbcf795c907eca"
//!         }
//!       ],
//!       "expected": [
//!         {
//!           "compiler_version": "<0.8",
//!           "return_data": [
//!             "0"
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

pragma solidity >=0.4.16;

contract Test {
    function main(uint8 a, uint8 b) public pure returns(uint8) {
        uint8 c = a;
        c += b;
        return c;
    }
}
