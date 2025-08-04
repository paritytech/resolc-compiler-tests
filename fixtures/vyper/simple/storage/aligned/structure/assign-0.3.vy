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
#!           "caller": "0x10fe5185D151ecc46002039E339F1F520C87540d"
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
