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
#!           "caller": "0xDB55Ec2D5d52Bb17e1F6391e0ea0C48B7f2eA2E7"
#!         },
#!         {
#!           "method": "GET_MY_ADDRESS",
#!           "calldata": [],
#!           "caller": "0xDB55Ec2D5d52Bb17e1F6391e0ea0C48B7f2eA2E7"
#!         }
#!       ],
#!       "expected": [
#!         "0xDB55Ec2D5d52Bb17e1F6391e0ea0C48B7f2eA2E7"
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
#!           "caller": "0x14Ae06770A425fDCb048184578F4b580067a463e"
#!         },
#!         {
#!           "method": "GET_MY_UINT",
#!           "calldata": [],
#!           "caller": "0x14Ae06770A425fDCb048184578F4b580067a463e"
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
