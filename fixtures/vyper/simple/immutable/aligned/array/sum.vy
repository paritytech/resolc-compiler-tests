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
#!           "caller": "0x4237D259088D7eAF4C679C13B02ec1cf6B848083"
#!         },
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "42"
#!           ],
#!           "caller": "0x4237D259088D7eAF4C679C13B02ec1cf6B848083"
#!         }
#!       ],
#!       "expected": [
#!         "50"
#!       ]
#!     }
#!   ]
#! }

data: immutable(uint256[4])

@deploy
def __init__(input: uint256[4]):
    data = input

@external
def main(argument: uint8) -> uint8:
    sum: uint8 = 0
    for i: uint256 in range(0, 4):
        sum += convert(data[i], uint8)
    return sum
