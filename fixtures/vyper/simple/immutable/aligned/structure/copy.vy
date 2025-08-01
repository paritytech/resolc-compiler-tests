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
#!           "caller": "0xe84EF8E19DcdB0C281A72B0366F5fBc4E4Fbc543"
#!         },
#!         {
#!           "method": "main",
#!           "calldata": [],
#!           "caller": "0xe84EF8E19DcdB0C281A72B0366F5fBc4E4Fbc543"
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

@deploy
def __init__(input: Data):
    data = input

@external
def main() -> Data:
    return data
