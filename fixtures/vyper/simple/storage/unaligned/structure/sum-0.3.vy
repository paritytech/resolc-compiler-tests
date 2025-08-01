#! {
#!   "modes": [
#!     "V <=0.3.10"
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
#!               "0x14",
#!               "0x0f",
#!               "0x0a",
#!               "0x05"
#!             ]
#!           },
#!           "caller": "0x32CfA5A53e3F579cf2a3e1239Be059C8710df1bf"
#!         }
#!       ],
#!       "expected": [
#!         "50"
#!       ]
#!     }
#!   ]
#! }

TEST: constant(uint8) = 42

struct Data:
    a: uint8
    b: uint8
    c: uint8
    d: uint8

data: Data

@external
def main(argument: uint8) -> uint8:
    sum: uint8 = 0
    sum += self.data.a
    sum += self.data.b
    sum += self.data.c
    sum += self.data.d
    return sum
