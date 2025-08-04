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
#!             "42"
#!           ],
#!           "caller": "0x86A75AA1B3E60b2767AB36ce292A80beFB3b67D2"
#!         }
#!       ],
#!       "expected": [
#!         "50"
#!       ]
#!     }
#!   ]
#! }

SIZE_HALVED: constant(uint8) = 2

@external
@pure
def main(_value: uint8) -> uint8:
    value: uint8 = _value
    array: uint8[SIZE_HALVED * 2] = [0, 0, 0, 0]
    for i: uint8 in range(SIZE_HALVED * 2):
        array[i] = 2
    for i: uint8 in range(SIZE_HALVED * 2):
        value += array[i]
    return value
