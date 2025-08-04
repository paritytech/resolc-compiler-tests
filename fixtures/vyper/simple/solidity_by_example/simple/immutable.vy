#! {
#!   "modes": [
#!     "V >=0.4.0"
#!   ],
#!   "cases": [
#!     {
#!       "name": "address",
#!       "inputs": [
#!         {
#!           "method": "#deployer",
#!           "calldata": [
#!             "9823"
#!           ],
#!           "expected": [
#!             "Test.address"
#!           ],
#!           "caller": "0x97eA2C4eA8e0f66E27B49D27309Aa02C63B9cF29"
#!         },
#!         {
#!           "method": "GET_MY_ADDRESS",
#!           "calldata": [],
#!           "caller": "0x97eA2C4eA8e0f66E27B49D27309Aa02C63B9cF29"
#!         }
#!       ],
#!       "expected": [
#!         "0x97eA2C4eA8e0f66E27B49D27309Aa02C63B9cF29"
#!       ]
#!     },
#!     {
#!       "name": "uint",
#!       "inputs": [
#!         {
#!           "method": "#deployer",
#!           "calldata": [
#!             "555555"
#!           ],
#!           "expected": [
#!             "Test.address"
#!           ],
#!           "caller": "0xd8b91f84fEA21f89E8Ad04865180520eE7DB96a5"
#!         },
#!         {
#!           "method": "GET_MY_UINT",
#!           "calldata": [],
#!           "caller": "0xd8b91f84fEA21f89E8Ad04865180520eE7DB96a5"
#!         }
#!       ],
#!       "expected": [
#!         "555555"
#!       ]
#!     }
#!   ]
#! }

# coding convention to uppercase constant variables
MY_ADDRESS: immutable(address)
MY_UINT: immutable(uint256)

@deploy
def __init__(_myUint: uint256):
    MY_ADDRESS = msg.sender
    MY_UINT = _myUint

@external
def GET_MY_ADDRESS() -> address:
    return MY_ADDRESS

@external
def GET_MY_UINT() -> uint256:
    return MY_UINT
