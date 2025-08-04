#! {
#!   "modes": [
#!     "V >=0.4.0"
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
#!           "caller": "0xe6D7C72D69094692bBB3f3500E26f38c57989C23"
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
