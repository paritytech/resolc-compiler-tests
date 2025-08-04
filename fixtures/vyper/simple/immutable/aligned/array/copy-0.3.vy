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
#!           "caller": "0x4F48CB93309a37deA0Ed8C98FbAA21083C466E01"
#!         },
#!         {
#!           "method": "main",
#!           "calldata": [],
#!           "caller": "0x4F48CB93309a37deA0Ed8C98FbAA21083C466E01"
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

@external
def __init__(input: uint256[4]):
    data = input

@external
def main() -> uint256[4]:
    return data
