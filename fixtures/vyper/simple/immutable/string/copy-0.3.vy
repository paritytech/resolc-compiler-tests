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
#!           "caller": "0xf75D6DcA6D6a11EFa163AeA9002E56D01524A7fe"
#!         },
#!         {
#!           "method": "main",
#!           "calldata": [],
#!           "caller": "0xf75D6DcA6D6a11EFa163AeA9002E56D01524A7fe"
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
