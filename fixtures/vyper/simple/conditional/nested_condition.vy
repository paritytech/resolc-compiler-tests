#! {
#!   "modes": [
#!     "V >=0.4.0"
#!   ],
#!   "cases": [
#!     {
#!       "name": "first",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "1"
#!           ],
#!           "caller": "0xcd8c0452c7bB0E1BE7908977A5cB8FB81869864c"
#!         }
#!       ],
#!       "expected": [
#!         "25"
#!       ]
#!     },
#!     {
#!       "name": "second",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "2"
#!           ],
#!           "caller": "0x735B93617ED557Bed02fEdbD0A1e59da51C8Cc86"
#!         }
#!       ],
#!       "expected": [
#!         "42"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def main(witness: uint8) -> uint8:
    tmp: uint8 = 0

    if witness == 1:
        tmp = 2
    else:
        tmp = 3

    if tmp == 2:
        return 25
    else:
        return 42
