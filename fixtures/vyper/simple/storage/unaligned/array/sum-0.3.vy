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
#!           "caller": "0x4Eca8Aa2F09b2b049FAF2F5C9924762A3aacD5c4"
#!         }
#!       ],
#!       "expected": [
#!         "50"
#!       ]
#!     }
#!   ]
#! }

data: uint8[4]

@external
def main(argument: uint8) -> uint8:
    sum: uint8 = 0
    for i in range(0, 4):
        sum += self.data[i]
    return sum
