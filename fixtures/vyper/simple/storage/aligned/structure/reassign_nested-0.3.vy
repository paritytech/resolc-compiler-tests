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
#!           "caller": "0xc09477A1E3720e77cA547E5d9dc2B324A8A8EA24"
#!         }
#!       ],
#!       "expected": [
#!         "226"
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
    self.data.inner.next += convert(argument, uint256)

    return argument + TEST + convert(self.data.inner.next, uint8)
