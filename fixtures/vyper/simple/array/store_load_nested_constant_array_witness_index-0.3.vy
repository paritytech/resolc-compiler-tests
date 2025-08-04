#! {
#!   "modes": [
#!     "V <=0.3.10"
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
#!           "caller": "0xc984a7D3304A7997CD32102959ad9cdfB6c567e6"
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
#!           "caller": "0xdDAC71889c707D69A6D8ACb8E729bEAA652B8E9a"
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
#!           "caller": "0x9C16213c2a0eA5F6b4Ca07C5EC92b251f2F14D8d"
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
#!           "caller": "0x873A7102D5989A6dB4Db925ab5677685887c7F7b"
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
#!           "caller": "0x710728d67661f9d89217Ade1227d52B8D5683E5c"
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
#!           "caller": "0x390f2468159BF00267c03Bf130cBA78d5A48a966"
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
#!           "caller": "0x12E8a583e409CbB9c47519a1C26c62c8191dc97f"
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
#!           "caller": "0x45507d151ee9Bf34b01c97D8a41048a74D8A1aA2"
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
#!           "caller": "0x3fa5217cbc6143bB4980072ddF168b1f9129a179"
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
