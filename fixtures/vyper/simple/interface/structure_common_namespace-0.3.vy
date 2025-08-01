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
#!             "42"
#!           ],
#!           "caller": "0x7312dc7ED06170A2A5067AB9e48317DB4F796288"
#!         }
#!       ],
#!       "expected": [
#!         "210"
#!       ]
#!     }
#!   ]
#! }

struct Data:
    factor: uint8

@internal
@pure
def test(data: Data, witness: uint8) -> uint8:
    return witness * data.factor

@external
def main(witness: uint8) -> uint8:
    data: Data = Data({factor: 5})
    return self.test(data, witness)
