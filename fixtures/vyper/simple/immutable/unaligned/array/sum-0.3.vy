#! {
#!   "modes": [
#!     "V <=0.3.10"
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
#!           "caller": "0xa1aCec62C6CfE4E63878b192D65BAC85184f9ccf"
#!         },
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "42"
#!           ],
#!           "caller": "0xa1aCec62C6CfE4E63878b192D65BAC85184f9ccf"
#!         }
#!       ],
#!       "expected": [
#!         "50"
#!       ]
#!     }
#!   ]
#! }

data: immutable(uint8[4])

@external
def __init__(input: uint8[4]):
    data = input

@external
def main(argument: uint8) -> uint8:
    sum: uint8 = 0
    for i in range(0, 4):
        sum += data[i]
    return sum
