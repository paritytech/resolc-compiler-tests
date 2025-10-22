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
//!           "caller": "0xc66ea434b3c00fe90013f2d463e1605ec2118e5c"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1"
//!           ],
//!           "caller": "0x2059b38c1823a260e472b34d096a70b1ff6ecfab"
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
//!             "0xE0281C82903B3293902E82845FF823834309A8F239982392328448AB42789DA8"
//!           ],
//!           "caller": "0xc11ef83109fb4c43c24237ec177da5aedf50969d"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0x24ec2c95538152df4cfbc635321520782cc45f8b"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(uint256 a) external pure returns(uint256 result) {
        assembly {
            result := iszero(a)
        }
    }
}
