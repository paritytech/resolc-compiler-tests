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
#!             "1",
#!             "2",
#!             "3",
#!             "4",
#!             "0"
#!           ],
#!           "caller": "0xF1AD71AF2A48119C06E16BA371570e147410C49b"
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
#!             "1",
#!             "2",
#!             "3",
#!             "4",
#!             "1"
#!           ],
#!           "caller": "0xf0D7ec9B1DA42C0Ac7Cf1C2DEDA5dEfa52ca7af2"
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
#!             "1",
#!             "2",
#!             "3",
#!             "4",
#!             "2"
#!           ],
#!           "caller": "0x5e8C09e24F61c58fA10a8DCaEB12Ad05Cc68deFf"
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
#!             "2",
#!             "3",
#!             "4",
#!             "3"
#!           ],
#!           "caller": "0x9A041577B6E29c72e35058cd1FD2887dfF8BCB3a"
#!         }
#!       ],
#!       "expected": [
#!         "4"
#!       ]
#!     }
#!   ]
#! }

SIZE: constant(uint8) = 4

@external
@pure
def main(array: uint8[SIZE], index: uint8) -> uint8:
    return array[index]
