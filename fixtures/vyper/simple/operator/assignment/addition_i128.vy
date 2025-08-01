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
#!           "caller": "0x7680e35e67ECe63eA41D2C7FE650222B2f0eC677"
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
#!             "-42",
#!             "25"
#!           ],
#!           "caller": "0x649dcA03a3C40AA6fa1486c7d60a844D147cF54A"
#!         }
#!       ],
#!       "expected": [
#!         "-17"
#!       ]
#!     },
#!     {
#!       "name": "to_max",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "50000000000000000299999999999999999999",
#!             "120141183460469231431687303715884105728"
#!           ],
#!           "caller": "0x70a6447584d469bc256fe5f9611a09ff525d2374"
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
#!             "120141183460469231431687303715884105728",
#!             "60000000000000000499999999999999999999"
#!           ],
#!           "caller": "0x32bD36E50D0e77Ec3E4AAc060F55147b7B789E4b"
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
#!             "120141183460469231431687303715884105728",
#!             "50000000000000000300000000000000000000"
#!           ],
#!           "caller": "0xff54F7889fb6bb39E523785477d9f09c9061E2cE"
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
    c: int128 = a
    c += b
    return c
