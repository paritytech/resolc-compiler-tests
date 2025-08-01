#! {
#!   "modes": [
#!     "V <=0.3.10"
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
#!           "caller": "0x932DE2EC842e62a99110c46fB6dCF60954637BdB"
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
#!           "caller": "0xE044c34322BEeF8626c0e10cd05180cdd5960eFC"
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
#!           "caller": "0x9A53945906b5C9caB0267e6aBE54C8F9E02616F9"
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
#!           "caller": "0xc1452EF09674095813576738827c8227b367Db8C"
#!         }
#!       ],
#!       "expected": [
#!         "512356125631255917570472948605620"
#!       ]
#!     }
#!   ]
#! }

x: public(uint256)

@external
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
