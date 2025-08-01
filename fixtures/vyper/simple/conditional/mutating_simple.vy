#! {
#!   "modes": [
#!     "V >=0.4.0"
#!   ],
#!   "cases": [
#!     {
#!       "name": "conditionTrue",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "1"
#!           ],
#!           "caller": "0xb6bCc1f1639D1b48addC9Ac15F773F4c5234e27F"
#!         }
#!       ],
#!       "expected": [
#!         "10"
#!       ]
#!     },
#!     {
#!       "name": "conditionFalse",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "0"
#!           ],
#!           "caller": "0x45ad806588309FD04B3fAC4C7E949ef41D1B2B3e"
#!         }
#!       ],
#!       "expected": [
#!         "5"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def main(condition: bool) -> uint8:
    result: uint8 = 5

    if condition:
        result += 5

    return result
