#! {
#!   "modes": [
#!     "V >=0.4.0"
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
#!           "caller": "0x65f79069268693c00aaEdA64bFd0465301546752"
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
