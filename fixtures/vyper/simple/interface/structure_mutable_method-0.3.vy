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
#!           "caller": "0xdc7687CCBc9AF80d4Fe4608394a2DB5167AC7e3E"
#!         }
#!       ],
#!       "expected": [
#!         "131"
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
def fill(data: Data, values: uint8[3]) -> Data:
    _data: Data = data
    _data.a = values[0]
    _data.b = values[1]
    _data.c = values[2]
    return _data

@external
def main(witness: Data) -> uint8:
    filled: Data = self.fill(witness, [25, 42, 64])
    return filled.a + filled.b + filled.c
