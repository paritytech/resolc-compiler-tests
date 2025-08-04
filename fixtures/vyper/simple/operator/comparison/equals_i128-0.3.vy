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
#!           "caller": "0x24ab412145861B9d2EFB1f5c7aDAe51C7e3b2d67"
#!         }
#!       ],
#!       "expected": [
#!         "1"
#!       ]
#!     },
#!     {
#!       "name": "ordinar_false_lesser",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "-25",
#!             "42"
#!           ],
#!           "caller": "0xD9A538bFB675950B163D88736A9d61c18Fee3C71"
#!         }
#!       ],
#!       "expected": [
#!         "0"
#!       ]
#!     },
#!     {
#!       "name": "ordinar_false_bigger",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "42",
#!             "-25"
#!           ],
#!           "caller": "0x1a1299408819f96C1093aC5d76219Af204670ea3"
#!         }
#!       ],
#!       "expected": [
#!         "0"
#!       ]
#!     },
#!     {
#!       "name": "ordinar_true_negative",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "-42",
#!             "-42"
#!           ],
#!           "caller": "0xA4e913241E5DC7cAdaE94a8a0b956E88361a68a9"
#!         }
#!       ],
#!       "expected": [
#!         "1"
#!       ]
#!     },
#!     {
#!       "name": "ordinar_true_positive",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "42",
#!             "42"
#!           ],
#!           "caller": "0xe26770668dBdB21D5B562dca1bA1c86040bC099D"
#!         }
#!       ],
#!       "expected": [
#!         "1"
#!       ]
#!     },
#!     {
#!       "name": "min_min",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "-170141183460469231731687303715884105728",
#!             "-170141183460469231731687303715884105728"
#!           ],
#!           "caller": "0x21b0fA94f5cB26203B5CAAcf4B3c78390388c663"
#!         }
#!       ],
#!       "expected": [
#!         "1"
#!       ]
#!     },
#!     {
#!       "name": "max_max",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "170141183460469231731687303715884105727",
#!             "170141183460469231731687303715884105727"
#!           ],
#!           "caller": "0xf33856Cd534471E983394a29e4fB4836D5060058"
#!         }
#!       ],
#!       "expected": [
#!         "1"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def main(a: int128, b: int128) -> bool:
    return a == b
