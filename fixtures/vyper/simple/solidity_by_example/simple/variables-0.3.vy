#! {
#!   "modes": [
#!     "V <=0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "text",
#!       "inputs": [
#!         {
#!           "method": "doSomething",
#!           "calldata": [],
#!           "caller": "0x9Fe248e63a21E7BCF669424efA46844E981DFE93"
#!         },
#!         {
#!           "method": "text",
#!           "calldata": [],
#!           "caller": "0x9Fe248e63a21E7BCF669424efA46844E981DFE93"
#!         }
#!       ],
#!       "expected": [
#!         "0x20",
#!         "5",
#!         "0x48656c6c6f000000000000000000000000000000000000000000000000000000"
#!       ]
#!     },
#!     {
#!       "name": "num",
#!       "inputs": [
#!         {
#!           "method": "doSomething",
#!           "calldata": [],
#!           "caller": "0x6b5F9aac55b5510C0Ef4d1d3f32Ab2FBc85B6669"
#!         },
#!         {
#!           "method": "num",
#!           "calldata": [],
#!           "caller": "0x6b5F9aac55b5510C0Ef4d1d3f32Ab2FBc85B6669"
#!         }
#!       ],
#!       "expected": [
#!         "123"
#!       ]
#!     }
#!   ]
#! }

# State variables are stored on the blockchain.
text: public(String[5])
num: public(uint256)

@external
def __init__():
    self.text = "Hello"
    self.num = 123

@external
def doSomething():
    # Local variables are not saved to the blockchain.
    i: uint256 = 456

    # Here are some global variables
    _timestamp: uint256 = block.timestamp # Current block timestamp
    sender: address = msg.sender # address of the caller
