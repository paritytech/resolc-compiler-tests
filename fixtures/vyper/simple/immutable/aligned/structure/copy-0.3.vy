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
#!           "caller": "0xaF4B3B21e8FdB4E890E6F55f0bD191963dE15123"
#!         },
#!         {
#!           "method": "main",
#!           "calldata": [],
#!           "caller": "0xaF4B3B21e8FdB4E890E6F55f0bD191963dE15123"
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

struct Data:
    a: uint256
    b: uint256
    c: uint256
    d: uint256

data: immutable(Data)

@external
def __init__(input: Data):
    data = input

@external
def main() -> Data:
    return data
