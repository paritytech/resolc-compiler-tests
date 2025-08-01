#! {
#!   "modes": [
#!     "V =0.3.3"
#!   ],
#!   "cases": [
#!     {
#!       "name": "default",
#!       "inputs": [
#!         {
#!           "method": "#deployer",
#!           "caller": "0x001b7E2aef2a4C55e985482edbDB08b7a7e9Ca89",
#!           "calldata": [],
#!           "expected": [
#!             "Test.address"
#!           ]
#!         },
#!         {
#!           "method": "x",
#!           "calldata": [],
#!           "expected": [
#!             "42"
#!           ],
#!           "caller": "0x001b7E2aef2a4C55e985482edbDB08b7a7e9Ca89"
#!         },
#!         {
#!           "method": "y",
#!           "calldata": [],
#!           "expected": [
#!             "43"
#!           ],
#!           "caller": "0x001b7E2aef2a4C55e985482edbDB08b7a7e9Ca89"
#!         }
#!       ],
#!       "expected": [
#!         "43"
#!       ]
#!     }
#!   ]
#! }

# @version 0.3.3

X: immutable(bytes32)
Y: immutable(bytes32)
Z: immutable(String[64])

@external
def __init__():
    X = convert(42, bytes32)
    Y = convert(43, bytes32)
    Z = "Test"

@external
def x() -> bytes32:
    return X

@external
def y() -> bytes32:
    return Y
