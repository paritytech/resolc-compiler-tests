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
#!           "caller": "0x633E2edBc8C01D1Cd8e3927C0d30351aD41a34D0"
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
#!             "21"
#!           ],
#!           "caller": "0xa6EfeA42d77bAf1ce31ae4420f98ab606d91783C"
#!         }
#!       ],
#!       "expected": [
#!         "63"
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
#!           "caller": "0xdED84CaDD62A73a9E0D90a7363420254696a696b"
#!         }
#!       ],
#!       "expected": [
#!         "0"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def main(a: uint256, b: uint256) -> uint256:
    return a ^ b
