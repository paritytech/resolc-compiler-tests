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
#!               "0x01",
#!               "0x02",
#!               "0x03",
#!               "0x04"
#!             ]
#!           },
#!           "caller": "0x9031ac8Abb8492C2F10ea427DE4a4d4111bf4E08"
#!         }
#!       ],
#!       "expected": [
#!         "130"
#!       ]
#!     }
#!   ]
#! }

data: uint8[4]

TEST: constant(uint8) = 42

@external
def main(argument: uint8) -> uint8:
    self.data[3] += argument

    return argument + TEST + self.data[3]
