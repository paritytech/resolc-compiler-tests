#! {
#!   "modes": [
#!     "V <=0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "main",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "1",
#!             "2",
#!             "3"
#!           ],
#!           "caller": "0x1FFCdA6cc32aB33fAba271C84208B0EF2A9C3d1a"
#!         }
#!       ],
#!       "expected": [
#!         "6"
#!       ]
#!     }
#!   ]
#! }

struct Data:
    a: uint8
    b: uint8
    c: uint8

@internal
@pure
def sum(data: Data) -> uint8:
    return data.a + data.b + data.c

@external
def main(witness: Data) -> uint8:
    return self.sum(witness)
