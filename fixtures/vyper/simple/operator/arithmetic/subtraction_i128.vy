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
#!           "caller": "0x5C6692040BE1E4a7C88F6Bc9A71A250309c2D620"
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
#!           "caller": "0x1E5d82Eaa5E6dF620e3D2B1d2e3F07cAb663f07A"
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
#!             "170141183460469231731687303715884105727"
#!           ],
#!           "caller": "0x6a64ACDB4D1BeDa9ee7a77DaDBAFa08dE26d5265"
#!         }
#!       ],
#!       "expected": [
#!         "-170141183460469231731687303715884105728"
#!       ]
#!     },
#!     {
#!       "name": "to_max",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "170141183460469231731687303715884105727",
#!             "0"
#!           ],
#!           "caller": "0xA49e5C5Ac7Cc8A58bae32077fe401590073D660A"
#!         }
#!       ],
#!       "expected": [
#!         "170141183460469231731687303715884105727"
#!       ]
#!     },
#!     {
#!       "name": "overflow",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "-3435455454",
#!             "170141183460469231731687303714884105727"
#!           ],
#!           "caller": "0x3b736E0Eb63789bB68248d7a11930E85A4483260"
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
#!             "-170141183460469231731687303715884105728",
#!             "1"
#!           ],
#!           "caller": "0x9796DaA31F5a05fd176c9cc9b7a1DdF2ecD7a0c3"
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
def main(a: int128, b: int128) -> int128:
    return a - b
