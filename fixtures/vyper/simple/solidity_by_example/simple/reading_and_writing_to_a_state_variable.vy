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
#!           "caller": "0xeDCfE704936667116674b0e632c0F39B1EE305bd"
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
#!           "caller": "0xe31e8F08A94f75354E9b17f78077223D30fcC319"
#!         },
#!         {
#!           "method": "num",
#!           "calldata": [],
#!           "caller": "0xe31e8F08A94f75354E9b17f78077223D30fcC319"
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
#!           "caller": "0x0A05ca74311df926c29d5387987Ef689EDc52616"
#!         },
#!         {
#!           "method": "set",
#!           "calldata": [
#!             "-82349283489238"
#!           ],
#!           "caller": "0x0A05ca74311df926c29d5387987Ef689EDc52616"
#!         },
#!         {
#!           "method": "get",
#!           "calldata": [],
#!           "caller": "0x0A05ca74311df926c29d5387987Ef689EDc52616"
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
