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
#!             "32",
#!             "8",
#!             "0x0102030405060708000000000000000000000000000000000000000000000000"
#!           ],
#!           "expected": [
#!             "Test.address"
#!           ],
#!           "caller": "0x98C04ffee3BBa323B382E96A65c967041B6Ec1E6"
#!         },
#!         {
#!           "method": "main",
#!           "calldata": [],
#!           "caller": "0x98C04ffee3BBa323B382E96A65c967041B6Ec1E6"
#!         }
#!       ],
#!       "expected": [
#!         "32",
#!         "8",
#!         "0x0102030405060708000000000000000000000000000000000000000000000000"
#!       ]
#!     }
#!   ]
#! }

data: immutable(String[8])

@external
def __init__(input: String[8]):
    data = input

@external
def main() -> String[8]:
    return data
