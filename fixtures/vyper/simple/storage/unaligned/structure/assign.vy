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
#!           "caller": "0x907e07e90084C3e5742561D72e66233002eE0d47"
#!         }
#!       ],
#!       "expected": [
#!         "126"
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
    self.data.next = argument

    return argument + TEST + self.data.next
