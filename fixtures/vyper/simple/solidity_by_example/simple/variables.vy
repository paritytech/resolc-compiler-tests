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
#!           "caller": "0xB22b5f3dFEC245179BB09ff2aB70F2b68d0bF897"
#!         },
#!         {
#!           "method": "text",
#!           "calldata": [],
#!           "caller": "0xB22b5f3dFEC245179BB09ff2aB70F2b68d0bF897"
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
#!           "caller": "0xf428ac854Ccc324A24574A6b1b867488e2A41753"
#!         },
#!         {
#!           "method": "num",
#!           "calldata": [],
#!           "caller": "0xf428ac854Ccc324A24574A6b1b867488e2A41753"
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
