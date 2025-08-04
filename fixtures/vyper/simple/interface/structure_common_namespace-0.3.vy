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
#!           "caller": "0x7743a12a7C0A3fb7b5D2d4d1545DA438745EC6b2"
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
