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
//!           "caller": "0x1ac6f9601f2f616badcea8a0a307e1a3c14767a4"
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
//!           "caller": "0xc2aa6271409c10dee630e79df90c968989ccf2b7"
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
//!             "255"
//!           ],
//!           "caller": "0x883d01eae6eaac077e126ddb32cd53550966ed76"
//!         }
//!       ],
//!       "expected": [
//!         "255"
//!       ]
//!     },
//!     {
//!       "name": "overflow_negative_minimal",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-1"
//!           ],
//!           "caller": "0x127688bbc070dd69a4db8c3ba5d43909e13d8f77"
//!         }
//!       ],
//!       "expected": [
//!         "255"
//!       ]
//!     },
//!     {
//!       "name": "overflow_negative",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-42"
//!           ],
//!           "caller": "0x0b54a50c0409dab2e63c3566324268ed53ec019a"
//!         }
//!       ],
//!       "expected": [
//!         "214"
//!       ]
//!     },
//!     {
//!       "name": "overflow_positive_minimal",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "256"
//!           ],
//!           "caller": "0xafd46e3549cc63d7a240d6177d056857679e6f99"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "overflow_positive",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1000"
//!           ],
//!           "caller": "0x752481f35bb1d44d786c7b4dbe40db4a4266f96f"
//!         }
//!       ],
//!       "expected": [
//!         "232"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(int256 a) public pure returns(uint8) {
        return uint8(uint256(a));
    }
}
