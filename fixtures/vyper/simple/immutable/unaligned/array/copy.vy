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
#!           "caller": "0xE6Ed0C24236e6A3eAa7D9188189a2E2b4bfAF7aa"
#!         },
#!         {
#!           "method": "main",
#!           "calldata": [],
#!           "caller": "0xE6Ed0C24236e6A3eAa7D9188189a2E2b4bfAF7aa"
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
