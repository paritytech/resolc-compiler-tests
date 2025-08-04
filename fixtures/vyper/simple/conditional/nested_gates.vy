#! {
#!   "modes": [
#!     "V >=0.4.0"
#!   ],
#!   "cases": [
#!     {
#!       "name": "one",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "1",
#!             "0",
#!             "0"
#!           ],
#!           "caller": "0x3B00767055C94a4fAA350aCE627008fa5e8e04D6"
#!         }
#!       ],
#!       "expected": [
#!         "1"
#!       ]
#!     },
#!     {
#!       "name": "two",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "0",
#!             "1",
#!             "1"
#!           ],
#!           "caller": "0x1181B3e334b06CD8Af6619B62D77203ea6Bc3dF2"
#!         }
#!       ],
#!       "expected": [
#!         "2"
#!       ]
#!     },
#!     {
#!       "name": "three",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "0",
#!             "1",
#!             "0"
#!           ],
#!           "caller": "0xfdE561B46bc224a84f69331002e9DC6fd44bF45f"
#!         }
#!       ],
#!       "expected": [
#!         "3"
#!       ]
#!     },
#!     {
#!       "name": "four",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "0",
#!             "0",
#!             "0"
#!           ],
#!           "caller": "0x93eCf9d3F54e20145A050735BC9eF047db4D28d2"
#!         }
#!       ],
#!       "expected": [
#!         "4"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def main(gates: bool[3]) -> uint8:
    if gates[0]:
        return 1
    elif gates[1]:
        if gates[2]:
            return 2
        else:
            return 3
    else:
        return 4
