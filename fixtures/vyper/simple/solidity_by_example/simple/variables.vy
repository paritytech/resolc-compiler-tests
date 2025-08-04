#! {
#!   "modes": [
#!     "V >=0.4.0"
#!   ],
#!   "cases": [
#!     {
#!       "name": "text",
#!       "inputs": [
#!         {
#!           "method": "doSomething",
#!           "calldata": [],
#!           "caller": "0x38923f49634b8469a65672130192f66B0E2352Cf"
#!         },
#!         {
#!           "method": "text",
#!           "calldata": [],
#!           "caller": "0x38923f49634b8469a65672130192f66B0E2352Cf"
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
#!           "caller": "0xF1498dA007a43769B38386c2158B6DB7fEA64B9e"
#!         },
#!         {
#!           "method": "num",
#!           "calldata": [],
#!           "caller": "0xF1498dA007a43769B38386c2158B6DB7fEA64B9e"
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

@deploy
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
