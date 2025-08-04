//! {
//!   "cases": [
//!     {
//!       "name": "false_false",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "0"
//!           ],
//!           "caller": "0xb709C709A2D19AbAFA4728c8F071F0D42bEF4b14"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "exception": true
//!       }
//!     },
//!     {
//!       "name": "false_true",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "1"
//!           ],
//!           "caller": "0x2bD8d1EAFa562f3bcD70e8e405B3D978b9025a57"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "true_false",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "0"
//!           ],
//!           "caller": "0x1DEB463F6B4e6c62FCA02c03ee7f0E9447462aa9"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "exception": true
//!       }
//!     },
//!     {
//!       "name": "true_true",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "1"
//!           ],
//!           "caller": "0xA8D319e3EBAb5e4d22Cb5CB762De10e974f518BA"
//!         }
//!       ],
//!       "expected": [
//!         "126"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0;

contract Test {
    function main(uint gate1, uint gate2) view public returns(uint result) {
        try this.c1(gate1, this.c2(gate2)) returns(uint result1) {
            result += result1;
        } catch {
            result += 1;
        }
    }

    function c1(uint gate, uint a) pure public returns(uint) {
        if (gate == 0) {
            revert();
        }
        return a + 42;
    }

    function c2(uint gate) pure public returns(uint) {
        if (gate == 0) {
            revert();
        }
        return 84;
    }
}
