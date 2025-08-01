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
#!           "caller": "0xca6942A502FA3533123524006bBb57AbeC5C4C0e"
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
#!           "caller": "0xd8195E8A072b72259E29602eC0b5f63ED35Da780"
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
#!           "caller": "0x3CDb1883FBC7cc49b336d6f4207F32545781b881"
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
#!           "caller": "0xA61B9276270eF5126ff7a1eFE58391DA2C79D530"
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
