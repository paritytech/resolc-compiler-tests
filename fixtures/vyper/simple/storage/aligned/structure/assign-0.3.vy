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
#!               "99",
#!               "100",
#!               "101"
#!             ]
#!           },
#!           "caller": "0xd4738728E299D00E4Ef49e13Ea468524F8bc069d"
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
    value: uint256
    next: uint256
    last: uint256

data: Data

@external
def main(argument: uint8) -> uint8:
    self.data.next = convert(argument, uint256)

    return argument + TEST + convert(self.data.next, uint8)
