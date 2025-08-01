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
#!           "caller": "0x7F11b49d06cc7f9B8f28081626eD4D925CC5C64d",
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
#!           "caller": "0x7F11b49d06cc7f9B8f28081626eD4D925CC5C64d"
#!         },
#!         {
#!           "method": "Y",
#!           "calldata": [],
#!           "expected": [
#!             "43"
#!           ],
#!           "caller": "0x7F11b49d06cc7f9B8f28081626eD4D925CC5C64d"
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
