#! {
#!   "modes": [
#!     "V >=0.4.0"
#!   ],
#!   "cases": [
#!     {
#!       "name": "main",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "42"
#!           ],
#!           "storage": {
#!             "Test.address": [
#!               "0x63",
#!               "0x64",
#!               "0x65"
#!             ]
#!           },
#!           "caller": "0x698774F206D929560023262b0c1D49b5747F9DE6"
#!         }
#!       ],
#!       "expected": [
#!         "226"
#!       ]
#!     }
#!   ]
#! }

TEST: constant(uint8) = 42

struct Data:
    value: uint8
    next: uint8
    last: uint8

data: Data

@external
def main(argument: uint8) -> uint8:
    self.data.next += argument

    return argument + TEST + self.data.next
