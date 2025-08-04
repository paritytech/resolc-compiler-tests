#! {
#!   "modes": [
#!     "V >=0.4.0,<=0.4.1"
#!   ],
#!   "cases": [
#!     {
#!       "name": "first",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "2"
#!           ],
#!           "caller": "0xC09A55FeA94b9B536f06b6abCA2B0e4398205ae9"
#!         }
#!       ],
#!       "expected": [
#!         "141421"
#!       ]
#!     },
#!     {
#!       "name": "second",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "56473894349834"
#!           ],
#!           "caller": "0x5500067E1aAa340750586413987b6E1fe3496889"
#!         }
#!       ],
#!       "expected": [
#!         "751491146653"
#!       ]
#!     }
#!   ]
#! }

# pragma enable-decimals

@external
@pure
def main(a: int256) -> int256:
    return floor(sqrt(convert(a, decimal))*100000.0)
