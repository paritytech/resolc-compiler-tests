#! {
#!   "modes": [
#!     "V >=0.4.0"
#!   ],
#!   "cases": [
#!     {
#!       "name": "main",
#!       "inputs": [
#!         {
#!           "method": "#deployer",
#!           "calldata": [
#!             "20",
#!             "15",
#!             "10",
#!             "5"
#!           ],
#!           "expected": [
#!             "Test.address"
#!           ],
#!           "caller": "0x8d69266c7b1a7F626Bc1aB6b0e295404770BB7b5"
#!         },
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "42"
#!           ],
#!           "caller": "0x8d69266c7b1a7F626Bc1aB6b0e295404770BB7b5"
#!         }
#!       ],
#!       "expected": [
#!         "15000"
#!       ]
#!     }
#!   ]
#! }

data: immutable(uint8[4])

@deploy
def __init__(input: uint8[4]):
    data = input

@external
def main(argument: uint256) -> uint256:
    product: uint256 = 1
    for i: uint256 in range(0, 4):
        product *= convert(data[i], uint256)
    return product
