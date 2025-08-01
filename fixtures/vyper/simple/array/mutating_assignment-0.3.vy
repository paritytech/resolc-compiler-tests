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
#!             "10",
#!             "20",
#!             "30",
#!             "40",
#!             "50",
#!             "6"
#!           ],
#!           "caller": "0x1ad5E4b5B9D2c238E2cb315C7F5E35118863F4EB"
#!         }
#!       ],
#!       "expected": [
#!         "218"
#!       ]
#!     }
#!   ]
#! }

SIZE: constant(uint8) = 5

@external
@pure
def main(_array: uint8[SIZE], witness: uint8) -> uint8:
    array: uint8[SIZE] = _array
    array[0] += witness
    array[1] -= witness
    array[2] *= witness
    array[3] /= witness
    array[4] %= witness
    return array[0] + array[1] + array[2] + array[3] + array[4]
