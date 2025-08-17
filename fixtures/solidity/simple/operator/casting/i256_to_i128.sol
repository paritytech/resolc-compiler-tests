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
//!           "caller": "0xdb3ed822b78f0641623a12166607b5fa4df862ad"
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
//!             "42"
//!           ],
//!           "caller": "0xb88c19426f03c6981d1a4281c7414d842b97619a"
//!         }
//!       ],
//!       "expected": [
//!         "42"
//!       ]
//!     },
//!     {
//!       "name": "max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "170141183460469231731687303715884105727"
//!           ],
//!           "caller": "0x32e04b012ac811c91d36a355a6d2859a0071a965"
//!         }
//!       ],
//!       "expected": [
//!         "170141183460469231731687303715884105727"
//!       ]
//!     },
//!     {
//!       "name": "overflow_negative_minimal",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-170141183460469231731687303715884105729"
//!           ],
//!           "caller": "0xe0dd44773f7657b11019062879d65f3d9862460c"
//!         }
//!       ],
//!       "expected": [
//!         "170141183460469231731687303715884105727"
//!       ]
//!     },
//!     {
//!       "name": "overflow_negative",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-180141183460469231731687303715887105728"
//!           ],
//!           "caller": "0x756be12856a8f44ab22fdbcbd42b70b843377d09"
//!         }
//!       ],
//!       "expected": [
//!         "160141183460469231731687303715881105728"
//!       ]
//!     },
//!     {
//!       "name": "overflow_positive_minimal",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "170141183460469231731687303715884105728"
//!           ],
//!           "caller": "0x6f4c950442e1af093bcff730381e63ae9171b87a"
//!         }
//!       ],
//!       "expected": [
//!         "-170141183460469231731687303715884105728"
//!       ]
//!     },
//!     {
//!       "name": "overflow_positive",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "190141183460469231731687303715884105728"
//!           ],
//!           "caller": "0x4d1bf28514a4451249908e611366ec967c3d1558"
//!         }
//!       ],
//!       "expected": [
//!         "-150141183460469231731687303715884105728"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(int256 a) public pure returns(int128) {
        return int128(a);
    }
}
