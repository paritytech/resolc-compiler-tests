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
#!               "20",
#!               "15",
#!               "10",
#!               "5"
#!             ]
#!           },
#!           "caller": "0x21924DFfC2a6E7CFA7f965a2A2686fFfC70b67Bd"
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
