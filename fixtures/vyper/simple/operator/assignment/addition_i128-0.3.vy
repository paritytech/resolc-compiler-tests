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
#!           "caller": "0x9d70Eae63D4DddaAFdEd99434a8A1d3Af02bc126"
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
#!           "caller": "0x24Ea792E50C39E199778Cfa08C8646b2e28a0e42"
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
#!           "caller": "0xF9a8309f26DD621EA51AC32aAAb73Cb46C57C2B0"
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
#!           "caller": "0x5858434292150612Dadc3c7b679b1d99178059Ef"
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
#!           "caller": "0xFBeF5046D58950606E253880b3eC18d65E15e66a"
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
