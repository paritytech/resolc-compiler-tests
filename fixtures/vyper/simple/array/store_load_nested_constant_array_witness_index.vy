#! {
#!   "modes": [
#!     "V >=0.4.0"
#!   ],
#!   "cases": [
#!     {
#!       "name": "element1",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "0",
#!             "0"
#!           ],
#!           "caller": "0x63162Ef8fB6bfb9cAFdcdC3184892d0d0acC7F48"
#!         }
#!       ],
#!       "expected": [
#!         "1"
#!       ]
#!     },
#!     {
#!       "name": "element2",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "0",
#!             "1"
#!           ],
#!           "caller": "0x39888a2453B2Ca6aEaDad9eEB8ad490bd281a3b4"
#!         }
#!       ],
#!       "expected": [
#!         "2"
#!       ]
#!     },
#!     {
#!       "name": "element3",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "0",
#!             "2"
#!           ],
#!           "caller": "0x973e3037923387D4c5dfb2073049a0b28D7c74b2"
#!         }
#!       ],
#!       "expected": [
#!         "3"
#!       ]
#!     },
#!     {
#!       "name": "element4",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "1",
#!             "0"
#!           ],
#!           "caller": "0x3eD078Df51fb939C26D7Fc8f8DC04de3e72ac541"
#!         }
#!       ],
#!       "expected": [
#!         "4"
#!       ]
#!     },
#!     {
#!       "name": "element5",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "1",
#!             "1"
#!           ],
#!           "caller": "0x82E71D31f05af91acAEC096e0561e05128B2F87C"
#!         }
#!       ],
#!       "expected": [
#!         "5"
#!       ]
#!     },
#!     {
#!       "name": "element6",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "1",
#!             "2"
#!           ],
#!           "caller": "0x8B6E36F0E3D8E9094487Be876Fe71541A295b5d9"
#!         }
#!       ],
#!       "expected": [
#!         "6"
#!       ]
#!     },
#!     {
#!       "name": "element7",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "2",
#!             "0"
#!           ],
#!           "caller": "0x88B229cb66d647596d4EB81095f4bA9F37A2C75e"
#!         }
#!       ],
#!       "expected": [
#!         "7"
#!       ]
#!     },
#!     {
#!       "name": "element8",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "2",
#!             "1"
#!           ],
#!           "caller": "0x959ba9E97f81ef43F955728FfbA6215155C8407b"
#!         }
#!       ],
#!       "expected": [
#!         "8"
#!       ]
#!     },
#!     {
#!       "name": "element9",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "2",
#!             "2"
#!           ],
#!           "caller": "0xa17A3A771a02Ab881A3Bd05cb5b9eF6eCc84c659"
#!         }
#!       ],
#!       "expected": [
#!         "9"
#!       ]
#!     }
#!   ]
#! }

SIDE_SIZE: constant(uint8) = 3

@external
@pure
def main(i: uint8, j: uint8) -> uint8:
    array: uint8[SIDE_SIZE][SIDE_SIZE] = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
    return array[i][j]
