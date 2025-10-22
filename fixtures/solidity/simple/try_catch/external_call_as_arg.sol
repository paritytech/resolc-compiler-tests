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
//!           "caller": "0x89cdb38d3aac16f35d280bf8e85261f2cc1cb082"
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
//!           "caller": "0xf42d3aefc6849f32c978299807542b24fe1e461f"
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
//!           "caller": "0x7ac3d1d7b749e8d507ddb38d054111f1bb833871"
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
//!           "caller": "0x7cfebed7665a7855b4ce93ab20ad37eb2fdb34e8"
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
