#! {
#!   "modes": [
#!     "V >=0.4.0"
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
#!           "caller": "0x67Fb08ebc52B083e58fD2c167b6ace768A9aDdf0"
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
#!           "caller": "0xA794F1334c74DEbD7F14310439323d1643Be0113"
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
#!           "caller": "0xBB7874b425F398831cf980E80Dc8eb02932FaC7d"
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
#!           "caller": "0x454dbbE6F24e74B03CB5C63Bf5BCd885D8258f15"
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
#!           "caller": "0xA39447fe4bcB4E63CFB5874d22B4a99e4201aCBF"
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
