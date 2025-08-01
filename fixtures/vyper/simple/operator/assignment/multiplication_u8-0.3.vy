#! {
#!   "modes": [
#!     "V <=0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "zero_zero",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "0",
#!             "0"
#!           ],
#!           "caller": "0x0B6547533cD3Fb855523278a141877b5c24ac622"
#!         }
#!       ],
#!       "expected": [
#!         "0"
#!       ]
#!     },
#!     {
#!       "name": "ordinar",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "42",
#!             "5"
#!           ],
#!           "caller": "0xabA3d79E554B5a8410A5bda4A9C5d8d2B0563153"
#!         }
#!       ],
#!       "expected": [
#!         "210"
#!       ]
#!     },
#!     {
#!       "name": "to_max",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "51",
#!             "5"
#!           ],
#!           "caller": "0x61F6264f9488Eb87d1E594b50982328b603B7632"
#!         }
#!       ],
#!       "expected": [
#!         "255"
#!       ]
#!     },
#!     {
#!       "name": "overflow",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "100",
#!             "5"
#!           ],
#!           "caller": "0xfbe1b96b92bD5b42Fb1Ef875Fc85c6EA04c2d9f2"
#!         }
#!       ],
#!       "expected": {
#!         "return_data": [],
#!         "exception": true
#!       }
#!     },
#!     {
#!       "name": "overflow_minimal",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "32",
#!             "8"
#!           ],
#!           "caller": "0xeAD05E21B8a7a3743e62182d0B40045214cEDB93"
#!         }
#!       ],
#!       "expected": {
#!         "return_data": [],
#!         "exception": true
#!       }
#!     }
#!   ]
#! }

@external
@pure
def main(a: uint8, b: uint8) -> uint8:
    c: uint8 = a
    c *= b
    return c
