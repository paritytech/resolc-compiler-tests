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
#!           "caller": "0x1fe29753425da48D86b2F35a163314c5ac0d307a"
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
    for i in range(SIZE_HALVED * 2):
        array[i] = 2
    for i in range(SIZE_HALVED * 2):
        value += array[i]
    return value
