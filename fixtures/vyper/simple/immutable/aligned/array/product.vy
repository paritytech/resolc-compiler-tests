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
#!           "caller": "0x8E36D55258E32AB8Da1FbB2F1fBCa2104EE964A7"
#!         },
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "42"
#!           ],
#!           "caller": "0x8E36D55258E32AB8Da1FbB2F1fBCa2104EE964A7"
#!         }
#!       ],
#!       "expected": [
#!         "15000"
#!       ]
#!     }
#!   ]
#! }

data: immutable(uint256[4])

@deploy
def __init__(input: uint256[4]):
    data = input

@external
def main(argument: uint256) -> uint256:
    product: uint256 = 1
    for i: uint256 in range(0, 4):
        product *= data[i]
    return product
