#! {
#!   "modes": [
#!     "V >=0.4.0"
#!   ],
#!   "cases": [
#!     {
#!       "name": "default",
#!       "inputs": [
#!         {
#!           "method": "#deployer",
#!           "caller": "0x8c6a746Ec4D212a341aa765A19F9c04Cc67Ad5d8",
#!           "calldata": [],
#!           "expected": [
#!             "Test.address"
#!           ]
#!         },
#!         {
#!           "method": "X",
#!           "calldata": [],
#!           "expected": [
#!             "42"
#!           ],
#!           "caller": "0xe47Ca08a9AEdFcbca9ecA618Cf8D709b3261879a"
#!         },
#!         {
#!           "method": "Y",
#!           "calldata": [],
#!           "expected": [
#!             "43"
#!           ],
#!           "caller": "0xe47Ca08a9AEdFcbca9ecA618Cf8D709b3261879a"
#!         }
#!       ],
#!       "expected": [
#!         "43"
#!       ]
#!     }
#!   ]
#! }

X: public(immutable(bytes32))
Y: public(immutable(bytes32))
Z: public(immutable(String[64]))

@deploy
def __init__():
    X = convert(42, bytes32)
    Y = convert(43, bytes32)
    Z = "Test"
