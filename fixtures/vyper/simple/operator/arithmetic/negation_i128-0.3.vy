#! {
#!   "modes": [
#!     "V <=0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "zero",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "0"
#!           ],
#!           "caller": "0x86700a5767DAd35109178AC67be243fB6799218e"
#!         }
#!       ],
#!       "expected": [
#!         "0"
#!       ]
#!     },
#!     {
#!       "name": "ordinar_negative",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "-42"
#!           ],
#!           "caller": "0x78C627b1794534de1b5b97CFA7598122d01a354A"
#!         }
#!       ],
#!       "expected": [
#!         "42"
#!       ]
#!     },
#!     {
#!       "name": "ordinar_positive",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "42"
#!           ],
#!           "caller": "0x039eCC89f475B205e65B9e3e15fe5128aAC2311A"
#!         }
#!       ],
#!       "expected": [
#!         "-42"
#!       ]
#!     },
#!     {
#!       "name": "max_to_min",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "170141183460469231731687303715884105727"
#!           ],
#!           "caller": "0x2A47c376531619232F2AA67B925d8441BCC70D4E"
#!         }
#!       ],
#!       "expected": [
#!         "-170141183460469231731687303715884105727"
#!       ]
#!     },
#!     {
#!       "name": "almost_min_to_max",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "-170141183460469231731687303715884105727"
#!           ],
#!           "caller": "0x8aBF79EBe47F163fbd4beA460f868e67F5ca2021"
#!         }
#!       ],
#!       "expected": [
#!         "170141183460469231731687303715884105727"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def main(a: int128) -> int128:
    return -a
