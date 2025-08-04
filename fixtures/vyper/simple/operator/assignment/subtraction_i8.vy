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
#!           "caller": "0x952A912c71a6052Ae07740450970adb923E7A919"
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
#!             "64"
#!           ],
#!           "caller": "0x655d05aaDAba0997BC7CB15Eb31e3635b2b617a3"
#!         }
#!       ],
#!       "expected": [
#!         "-22"
#!       ]
#!     },
#!     {
#!       "name": "to_min",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "-1",
#!             "127"
#!           ],
#!           "caller": "0xf1793ebEcD08EdCCe4F47EafCd14dB78268FD421"
#!         }
#!       ],
#!       "expected": [
#!         "-128"
#!       ]
#!     },
#!     {
#!       "name": "to_max",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "127",
#!             "0"
#!           ],
#!           "caller": "0xf10926230CD5e42C08cf313Bc020F3b7a43b0a28"
#!         }
#!       ],
#!       "expected": [
#!         "127"
#!       ]
#!     },
#!     {
#!       "name": "overflow",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "-50",
#!             "100"
#!           ],
#!           "caller": "0x0f99D7de0730EE029a4c16c4556C32FB3B5B9422"
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
#!             "-128",
#!             "1"
#!           ],
#!           "caller": "0xa4771Ec715B31969166142188396F2a944b32A7F"
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
def main(a: int8, b: int8) -> int8:
    c: int8 = a
    c -= b
    return c
