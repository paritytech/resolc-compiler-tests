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
#!           "caller": "0xb61c7EA7966424b6F10490d6e44925585f0a12c3"
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
#!             "25"
#!           ],
#!           "caller": "0x236Ad28659063A7d85f72c6fE9730732987BeBa3"
#!         }
#!       ],
#!       "expected": [
#!         "67"
#!       ]
#!     },
#!     {
#!       "name": "to_max",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "100",
#!             "155"
#!           ],
#!           "caller": "0xe5D632a681CeEbd0bABE22fe626cee09392e228c"
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
#!             "200"
#!           ],
#!           "caller": "0xe1163b274096EBB0173af34826EA81600b2fba0E"
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
#!             "100",
#!             "156"
#!           ],
#!           "caller": "0x0f77251c9eFA2544e3a0a19ea68840520F635038"
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
    return a + b
