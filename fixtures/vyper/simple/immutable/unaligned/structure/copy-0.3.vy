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
#!           "caller": "0x0c30F355e52b2DdB6AbcEFcD366923d7dE4bA7de"
#!         },
#!         {
#!           "method": "main",
#!           "calldata": [],
#!           "caller": "0x0c30F355e52b2DdB6AbcEFcD366923d7dE4bA7de"
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
    a: uint8
    b: uint8
    c: uint8
    d: uint8

data: immutable(Data)

@external
def __init__(input: Data):
    data = input

@external
def main() -> Data:
    return data
