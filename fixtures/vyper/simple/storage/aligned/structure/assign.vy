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
#!               "99",
#!               "100",
#!               "101"
#!             ]
#!           },
#!           "caller": "0x2ec4f2f990F1771F71968fa9930768c0122a72Db"
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
