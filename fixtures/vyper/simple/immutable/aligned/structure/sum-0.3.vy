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
#!           "caller": "0xBba7bb485eF2A6399b4284Bbc9033Eb1D9f2BD54"
#!         },
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "42"
#!           ],
#!           "caller": "0xBba7bb485eF2A6399b4284Bbc9033Eb1D9f2BD54"
#!         }
#!       ],
#!       "expected": [
#!         "50"
#!       ]
#!     }
#!   ]
#! }

TEST: constant(uint8) = 42

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
def main(argument: uint8) -> uint8:
    sum: uint8 = 0
    sum += convert(data.a, uint8)
    sum += convert(data.b, uint8)
    sum += convert(data.c, uint8)
    sum += convert(data.d, uint8)
    return sum
