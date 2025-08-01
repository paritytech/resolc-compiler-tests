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
#!           "caller": "0xD1D1C0d4d89AB95a72B01A54EC232C2bF42eE4bf"
#!         },
#!         {
#!           "method": "main",
#!           "calldata": [],
#!           "caller": "0xD1D1C0d4d89AB95a72B01A54EC232C2bF42eE4bf"
#!         }
#!       ],
#!       "expected": [
#!         "20",
#!         "15",
#!         "10",
#!         "5"
#!       ]
#!     }
#!   ]
#! }

data: immutable(uint8[4])

@deploy
def __init__(input: uint8[4]):
    data = input

@external
def main() -> uint8[4]:
    return data
