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
#!           "caller": "0xE102523e3aF1ABFC41d16c20A7e404B3927117D9"
#!         },
#!         {
#!           "method": "main",
#!           "calldata": [],
#!           "caller": "0xE102523e3aF1ABFC41d16c20A7e404B3927117D9"
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
