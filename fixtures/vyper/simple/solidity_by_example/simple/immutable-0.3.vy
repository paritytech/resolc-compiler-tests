#! {
#!   "modes": [
#!     "V <=0.3.10"
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
#!           "caller": "0x12d18338f613816a06cEE8A75B93f1321261674B"
#!         },
#!         {
#!           "method": "MY_ADDRESS",
#!           "calldata": [],
#!           "caller": "0x12d18338f613816a06cEE8A75B93f1321261674B"
#!         }
#!       ],
#!       "expected": [
#!         "0x12d18338f613816a06cEE8A75B93f1321261674B"
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
#!           "caller": "0x68433196a2A588de54b556abCb98b2550D8C92f2"
#!         },
#!         {
#!           "method": "MY_UINT",
#!           "calldata": [],
#!           "caller": "0x68433196a2A588de54b556abCb98b2550D8C92f2"
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

@external
def __init__(_myUint: uint256):
    MY_ADDRESS = msg.sender
    MY_UINT = _myUint

@external
def MY_ADDRESS() -> address:
    return MY_ADDRESS

@external
def MY_UINT() -> uint256:
    return MY_UINT
