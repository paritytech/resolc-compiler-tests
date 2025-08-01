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
#!           "caller": "0x87298e4aC228B077192A0789812143f7320adC3B"
#!         },
#!         {
#!           "method": "MY_ADDRESS",
#!           "calldata": [],
#!           "caller": "0x87298e4aC228B077192A0789812143f7320adC3B"
#!         }
#!       ],
#!       "expected": [
#!         "0x87298e4aC228B077192A0789812143f7320adC3B"
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
#!           "caller": "0x7c828996f1141eBD8231714F84FB915Fc97f6Cb3"
#!         },
#!         {
#!           "method": "MY_UINT",
#!           "calldata": [],
#!           "caller": "0x7c828996f1141eBD8231714F84FB915Fc97f6Cb3"
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
