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
#!               "20",
#!               "15",
#!               "10",
#!               "5"
#!             ]
#!           },
#!           "caller": "0x2Eb255a240D3EAd019d6D23A7D729516E21E5f90"
#!         }
#!       ],
#!       "expected": [
#!         "15000"
#!       ]
#!     }
#!   ]
#! }

struct Data:
    a: uint256
    b: uint256
    c: uint256
    d: uint256

data: Data

@external
def main(argument: uint256) -> uint256:
    product: uint256 = 1
    product *= self.data.a
    product *= self.data.b
    product *= self.data.c
    product *= self.data.d
    return product
