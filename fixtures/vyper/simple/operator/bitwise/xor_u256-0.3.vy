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
#!           "caller": "0x394079B20e08BB130590bf480f0893D103C00cA9"
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
#!           "caller": "0x2288ea930fdED6EC8E387aBa562Ac8fF89906b80"
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
#!           "caller": "0xe765a07cC62adC4666185a26A3838eb17C5EbCD3"
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
    return bitwise_xor(a, b)
