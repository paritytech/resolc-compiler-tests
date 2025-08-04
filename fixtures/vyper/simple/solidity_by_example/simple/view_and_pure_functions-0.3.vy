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
#!           "caller": "0x2c49B4D65Da01F0ec1C97a226ca7a03E3afB77Dc"
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
#!           "caller": "0x6089776e778524288A6943FAFaD7C26E050652A2"
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
#!           "caller": "0xF7657389D8B20C66178358E5Bb0d286f62156038"
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
#!           "caller": "0x68A9823e505933182c3E23Dd79243D1E36B06544"
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
