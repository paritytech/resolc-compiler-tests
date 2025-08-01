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
#!           "caller": "0xf179BF98Cc315Ff0CDcf6D2129892Fa64629f9B5"
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
#!           "caller": "0x6EAdc5925B3409CC9cB9E3C72E19e9615Ce73336"
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
#!           "caller": "0x778A9F1e3afE18e94b8884CB2f34828Ef2C25c76"
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
