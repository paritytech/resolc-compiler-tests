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
#!           "caller": "0x04649ABF38855Adaf593F94702D7A7A6AEbBf5F6"
#!         },
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "42"
#!           ],
#!           "caller": "0x04649ABF38855Adaf593F94702D7A7A6AEbBf5F6"
#!         }
#!       ],
#!       "expected": [
#!         "50"
#!       ]
#!     }
#!   ]
#! }

data: immutable(uint8[4])

@deploy
def __init__(input: uint8[4]):
    data = input

@external
def main(argument: uint8) -> uint8:
    sum: uint8 = 0
    for i: uint256 in range(0, 4):
        sum += data[i]
    return sum
