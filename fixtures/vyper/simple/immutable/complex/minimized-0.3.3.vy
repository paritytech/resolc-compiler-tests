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
#!           "caller": "0x496BEC6DEBCCc15d02e3a1C82eC745a06dbccc1f",
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
#!           "caller": "0xA86ed12aB8d49D4a4897499BA8CFA8088e71e96b"
#!         },
#!         {
#!           "method": "y",
#!           "calldata": [],
#!           "expected": [
#!             "43"
#!           ],
#!           "caller": "0xA86ed12aB8d49D4a4897499BA8CFA8088e71e96b"
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
