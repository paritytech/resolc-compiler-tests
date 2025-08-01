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
#!           "caller": "0x8bc40c25739870566e70703789c61ccAD086c6E4"
#!         }
#!       ],
#!       "expected": [
#!         "15000"
#!       ]
#!     }
#!   ]
#! }

data: uint256[4]

@external
def main(argument: uint256) -> uint256:
    product: uint256 = 1
    for i: uint256 in range(0, 4):
        product *= self.data[i]
    return product
