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
#!           "caller": "0xc2C4d2650c6E6D33516d1e858D391543daDcD127"
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
#!           "caller": "0x13c2183f10fD524a6D926968856F4b248526a6a9"
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
#!           "caller": "0x9ef9e2838Ad4B28169d0C1E0Ef8889CD45d8234e"
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
#!           "caller": "0x41A1E8bcdE7Da01de0a3A199f1bEbF7667Bd29FA"
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
#!           "caller": "0xBf2760072CA95F75b6Ef90Ce621c47A6395F81C2"
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
