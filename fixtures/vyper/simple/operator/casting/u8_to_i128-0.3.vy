#! {
#!   "modes": [
#!     "V <=0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "zero",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "0"
#!           ],
#!           "caller": "0xd51B6AAf725235c032B80a828F1ae9E77ea32fE1"
#!         }
#!       ],
#!       "expected": [
#!         "0"
#!       ]
#!     },
#!     {
#!       "name": "ordinar",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "42"
#!           ],
#!           "caller": "0x51FA8Ee57160E3A8c22145e298BD3E945007eB39"
#!         }
#!       ],
#!       "expected": [
#!         "42"
#!       ]
#!     },
#!     {
#!       "name": "max",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "255"
#!           ],
#!           "caller": "0x778Efeac3f458AC9a413395fD3b49F17a0E65A79"
#!         }
#!       ],
#!       "expected": [
#!         "255"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def main(a: uint8) -> int128:
    return convert(a, int128)
