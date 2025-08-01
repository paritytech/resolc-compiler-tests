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
#!           "caller": "0x6A2EAc01D435540bF3928F1B5Dd63f5f472c06Ce"
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
#!             "24",
#!             "8"
#!           ],
#!           "caller": "0x62491e33F4A2A6C05a83A5d742E63eccdeC43c13"
#!         }
#!       ],
#!       "expected": [
#!         "8"
#!       ]
#!     },
#!     {
#!       "name": "max_max",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "115792089237316195423570985008687907853269984665640564039457584007913129639935",
#!             "115792089237316195423570985008687907853269984665640564039457584007913129639935"
#!           ],
#!           "caller": "0x8f73eaCaa78CDC48F8AD4bD29AE7382359BA92A4"
#!         }
#!       ],
#!       "expected": [
#!         "115792089237316195423570985008687907853269984665640564039457584007913129639935"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def main(a: uint256, b: uint256) -> uint256:
    return bitwise_and(a, b)
