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
//!           "caller": "0x24d881139ee639c2a774b4b1851cb7a9d0fce122"
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
//!           "caller": "0xd9a284367b6d3e25a91c91b5a430af2593886eb9"
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
//!             "127"
//!           ],
//!           "caller": "0xe6b3367318c5e11a6eed3cd0d850ec06a02e9b90"
//!         }
//!       ],
//!       "expected": [
//!         "127"
//!       ]
//!     },
//!     {
//!       "name": "overflow_minimal",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "129"
//!           ],
//!           "caller": "0x88c0e901bd1fd1a77bda342f0d2210fdc71cef6b"
//!         }
//!       ],
//!       "expected": [
//!         "-127"
//!       ]
//!     },
//!     {
//!       "name": "overflow",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "200"
//!           ],
//!           "caller": "0x7231c364597f3bfdb72cf52b197cc59111e71794"
//!         }
//!       ],
//!       "expected": [
//!         "-56"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(uint8 a) public pure returns(int8) {
        return int8(a);
    }
}
