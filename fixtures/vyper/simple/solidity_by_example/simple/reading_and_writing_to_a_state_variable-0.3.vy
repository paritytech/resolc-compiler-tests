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
#!           "caller": "0x7C857761Be0a0EeD0E1744cBad9b3905b0E8E3fE"
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
#!           "caller": "0xf48772a9B861a0C3a7bE69Ca505ed3A967107E30"
#!         },
#!         {
#!           "method": "num",
#!           "calldata": [],
#!           "caller": "0xf48772a9B861a0C3a7bE69Ca505ed3A967107E30"
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
#!           "caller": "0x6195116D3D716c14F1FdF36EB000564DBbBa8a45"
#!         },
#!         {
#!           "method": "set",
#!           "calldata": [
#!             "-82349283489238"
#!           ],
#!           "caller": "0x6195116D3D716c14F1FdF36EB000564DBbBa8a45"
#!         },
#!         {
#!           "method": "get",
#!           "calldata": [],
#!           "caller": "0x6195116D3D716c14F1FdF36EB000564DBbBa8a45"
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
