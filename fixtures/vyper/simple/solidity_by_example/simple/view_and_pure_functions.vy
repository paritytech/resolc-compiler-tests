#! {
#!   "modes": [
#!     "V >=0.4.0"
#!   ],
#!   "cases": [
#!     {
#!       "name": "addToXFirst",
#!       "inputs": [
#!         {
#!           "method": "addToX",
#!           "calldata": [
#!             "0"
#!           ],
#!           "caller": "0x1c472Ac157404aB6F669FA0Ae6A5aF4Bbb9eBa53"
#!         }
#!       ],
#!       "expected": [
#!         "1"
#!       ]
#!     },
#!     {
#!       "name": "addToXSecond",
#!       "inputs": [
#!         {
#!           "method": "addToX",
#!           "calldata": [
#!             "67234736412121212"
#!           ],
#!           "caller": "0x5d5890D1544e0562f795Bb38F1c49B6992b2F2Ef"
#!         }
#!       ],
#!       "expected": [
#!         "67234736412121213"
#!       ]
#!     },
#!     {
#!       "name": "addFirst",
#!       "inputs": [
#!         {
#!           "method": "_add",
#!           "calldata": [
#!             "2",
#!             "2"
#!           ],
#!           "caller": "0x8b2Fd2EbCF52E99a6396E20C4e9690e7C83f5BF1"
#!         }
#!       ],
#!       "expected": [
#!         "4"
#!       ]
#!     },
#!     {
#!       "name": "addSecond",
#!       "inputs": [
#!         {
#!           "method": "_add",
#!           "calldata": [
#!             "782438347287334342",
#!             "512356125631255135132125661271278"
#!           ],
#!           "caller": "0xED665557329Bba65eE20C96506917C1928aa1f5B"
#!         }
#!       ],
#!       "expected": [
#!         "512356125631255917570472948605620"
#!       ]
#!     }
#!   ]
#! }

x: public(uint256)

@deploy
def __init__():
    self.x = 1

# Promise not to modify the state.
@external
@view
def addToX(y: uint256) -> uint256:
    return self.x + y

# Promise not to modify or read from the state.
@external
@pure
def _add(i: uint256, j: uint256) -> uint256:
    return i + j
