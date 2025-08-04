#! {
#!   "modes": [
#!     "V <=0.3.10"
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
#!           "caller": "0x6B65787c7A9842a6072a3D778E9CCB42dC9B9BD5"
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
#!           "caller": "0x25F1c4b1e529BC3C4872Fa093fFc480260c5D583"
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
