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
#!           "caller": "0x44Df911c7efDc086485aade38c80059F65C54D44"
#!         },
#!         {
#!           "method": "main",
#!           "calldata": [],
#!           "caller": "0x44Df911c7efDc086485aade38c80059F65C54D44"
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

data: immutable(uint256[4])

@deploy
def __init__(input: uint256[4]):
    data = input

@external
def main() -> uint256[4]:
    return data
