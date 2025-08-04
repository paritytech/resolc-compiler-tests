#! {
#!   "modes": [
#!     "V <=0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "ordinar",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "42"
#!           ],
#!           "caller": "0x61adb9DbBaf4854D7dDB0CceCcD7876bA9A651eD"
#!         }
#!       ],
#!       "expected": [
#!         "115792089237316195423570985008687907853269984665640564039457584007913129639893"
#!       ]
#!     },
#!     {
#!       "name": "min_to_max",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "0"
#!           ],
#!           "caller": "0x0bb2FfC471d8a076a897f14515438d5f0116dC5a"
#!         }
#!       ],
#!       "expected": [
#!         "115792089237316195423570985008687907853269984665640564039457584007913129639935"
#!       ]
#!     },
#!     {
#!       "name": "max_to_min",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "115792089237316195423570985008687907853269984665640564039457584007913129639935"
#!           ],
#!           "caller": "0x50Ce0Cc938d2C3AB3eacfC72ca284193C2A9bc11"
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
def main(a: uint256) -> uint256:
    return bitwise_not(a)
