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
#!           "caller": "0xac6478771c522e4c6D67C64a18eeC1F88eF66D33"
#!         }
#!       ],
#!       "expected": [
#!         "126"
#!       ]
#!     }
#!   ]
#! }

TEST: constant(uint8) = 42

struct Inner:
    value: uint256
    next: uint256
    last: uint256

struct Data:
    inner: Inner

data: Data

@external
def main(argument: uint8) -> uint8:
    self.data.inner.next = convert(argument, uint256)

    return argument + TEST + convert(self.data.inner.next, uint8)
