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
#!             "4"
#!           ],
#!           "caller": "0x8720c23b1D9F0f6ac36E8726460BcBA621E213A2"
#!         }
#!       ],
#!       "expected": [
#!         "16"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def main(witness: uint8) -> uint8:
    return 1 + (
        2 + (
            3 + (
                witness
            ) + 3
        ) + 2
    ) + 1
