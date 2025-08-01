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
#!           "caller": "0x020e2aaEf954743Af2FC2d37bD280039925B8f9A"
#!         },
#!         {
#!           "method": "main",
#!           "calldata": [],
#!           "caller": "0x020e2aaEf954743Af2FC2d37bD280039925B8f9A"
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

data: immutable(Bytes[8])

@external
def __init__(input: Bytes[8]):
    data = input

@external
def main() -> Bytes[8]:
    return data
