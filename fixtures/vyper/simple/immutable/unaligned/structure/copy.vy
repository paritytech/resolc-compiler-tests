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
#!           "caller": "0x3A8C65aB9a8719c611e6d643BE1906dd1115F88d"
#!         },
#!         {
#!           "method": "main",
#!           "calldata": [],
#!           "caller": "0x3A8C65aB9a8719c611e6d643BE1906dd1115F88d"
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

@deploy
def __init__(input: Data):
    data = input

@external
def main() -> Data:
    return data
