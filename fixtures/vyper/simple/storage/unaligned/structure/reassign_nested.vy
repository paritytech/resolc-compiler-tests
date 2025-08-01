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
#!           "caller": "0x0E68b5312c6BB6E09E5Bd82Bc1F5D9C78dB08f64"
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
    value: uint8
    next: uint8
    last: uint8

struct Data:
    inner: Inner

data: Data

@external
def main(argument: uint8) -> uint8:
    self.data.inner.next += argument

    return argument + TEST + self.data.inner.next
