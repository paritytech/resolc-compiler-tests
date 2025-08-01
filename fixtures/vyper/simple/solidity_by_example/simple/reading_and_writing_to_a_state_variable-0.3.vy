#! {
#!   "modes": [
#!     "V <=0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "default",
#!       "inputs": [
#!         {
#!           "method": "get",
#!           "calldata": [],
#!           "caller": "0xe43659A0c4cc62F33094890d9Ed2c7d075b7AA2F"
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
#!           "caller": "0x48034d55672317c28c1BbbE03F03726E54aBa2D7"
#!         },
#!         {
#!           "method": "num",
#!           "calldata": [],
#!           "caller": "0x48034d55672317c28c1BbbE03F03726E54aBa2D7"
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
#!           "caller": "0x31C788B9409d823013e3F5D62D66733f6Efe6f33"
#!         },
#!         {
#!           "method": "set",
#!           "calldata": [
#!             "-82349283489238"
#!           ],
#!           "caller": "0x31C788B9409d823013e3F5D62D66733f6Efe6f33"
#!         },
#!         {
#!           "method": "get",
#!           "calldata": [],
#!           "caller": "0x31C788B9409d823013e3F5D62D66733f6Efe6f33"
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
