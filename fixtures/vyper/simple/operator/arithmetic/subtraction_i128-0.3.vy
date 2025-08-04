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
#!           "caller": "0xec57b29Bb6b425240d3acF6F59EE85a967941B05"
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
#!           "caller": "0xBa35aD311b670F2E27405804c1AfA2E542597b49"
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
#!           "caller": "0x7f4f37024D418486F7692A4d97Fe7F38723B3744"
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
#!           "caller": "0x521f888972103fbC63ecF7dDaCcFc74d05894E47"
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
#!           "caller": "0xc8Ba30DFA392126e097a9F5566e5d99D0DdD8d62"
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
#!           "caller": "0x67E884DC5A940fbE2dFf46ddF94965ded3730AB6"
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
