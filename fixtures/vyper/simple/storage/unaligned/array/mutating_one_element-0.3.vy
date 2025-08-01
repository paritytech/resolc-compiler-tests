#! {
#!   "modes": [
#!     "V <=0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "complex",
#!       "inputs": [
#!         {
#!           "method": "complex",
#!           "calldata": [],
#!           "storage": {
#!             "deadbeef00000000000000000000000000000000": [
#!               "1"
#!             ]
#!           },
#!           "caller": "0xdd3037B71F1404aB17d96E9102f7bE2FE82Df3A4"
#!         }
#!       ],
#!       "expected": [
#!         "1"
#!       ]
#!     }
#!   ]
#! }

# Report https://linear.app/matterlabs/issue/CPR-210/error-with-solidity-constants

KEY: uint8[1]

@external
def complex() -> uint8:
    self.KEY = [1]
    return self.KEY[0]
