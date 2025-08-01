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
#!           "caller": "0x03C353A3B4795B36Ffce9d49D9Dc0224168788F5"
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
#!             "42"
#!           ],
#!           "caller": "0x2f190D0FEd53E76E8BF4b701476b78196f829f34"
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
#!             "127"
#!           ],
#!           "caller": "0x7722b77DCa61D76E5054a3ebEB6727b36B54c4eC"
#!         }
#!       ],
#!       "expected": [
#!         "-127"
#!       ]
#!     },
#!     {
#!       "name": "overflow",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "200"
#!           ],
#!           "caller": "0x8723A18EC19ddb14eD31751CFcCd9B1C25805e4b"
#!         }
#!       ],
#!       "expected": [
#!         "-200"
#!       ]
#!     },
#!     {
#!       "name": "overflow_minimal",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "129"
#!           ],
#!           "caller": "0x91C6C242b5535bc6F64f4eC2b6054b126E6902CB"
#!         }
#!       ],
#!       "expected": [
#!         "-129"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def main(a: uint8) -> int128:
    return -convert(a, int128)
