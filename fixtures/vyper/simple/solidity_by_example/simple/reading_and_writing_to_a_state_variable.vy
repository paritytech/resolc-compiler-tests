#! {
#!   "modes": [
#!     "V >=0.4.0"
#!   ],
#!   "cases": [
#!     {
#!       "name": "default",
#!       "inputs": [
#!         {
#!           "method": "get",
#!           "calldata": [],
#!           "caller": "0xB1326Dee1EA97e6E16C56754dabeB2aB00D75ffe"
#!         }
#!       ],
#!       "expected": [
#!         "0"
#!       ]
#!     },
#!     {
#!       "name": "first",
#!       "inputs": [
#!         {
#!           "method": "set",
#!           "calldata": [
#!             "7823982309234984387823489290492314"
#!           ],
#!           "caller": "0x5bf8A8AD55405065dc3cD1d8B6E9Df11fD32B4fd"
#!         },
#!         {
#!           "method": "num",
#!           "calldata": [],
#!           "caller": "0x5bf8A8AD55405065dc3cD1d8B6E9Df11fD32B4fd"
#!         }
#!       ],
#!       "expected": [
#!         "7823982309234984387823489290492314"
#!       ]
#!     },
#!     {
#!       "name": "second",
#!       "inputs": [
#!         {
#!           "method": "set",
#!           "calldata": [
#!             "34342312412341234"
#!           ],
#!           "caller": "0x63a7dDbE01C3016c52277812d04347f594EB1621"
#!         },
#!         {
#!           "method": "set",
#!           "calldata": [
#!             "-82349283489238"
#!           ],
#!           "caller": "0x63a7dDbE01C3016c52277812d04347f594EB1621"
#!         },
#!         {
#!           "method": "get",
#!           "calldata": [],
#!           "caller": "0x63a7dDbE01C3016c52277812d04347f594EB1621"
#!         }
#!       ],
#!       "expected": [
#!         "-82349283489238"
#!       ]
#!     }
#!   ]
#! }

# State variable to store a number
num: public(uint256)

# You need to send a transaction to write to a state variable.
@external
def set(_num: uint256):
    self.num = _num

# You can read from a state variable without sending a transaction.
@external
@view
def get() -> uint256:
    return self.num
