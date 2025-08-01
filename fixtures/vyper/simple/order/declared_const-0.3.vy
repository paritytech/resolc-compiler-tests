#! {
#!   "modes": [
#!     "V <=0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "remainder_zero",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "15"
#!           ],
#!           "caller": "0xe498428f732a4BfACe7826779a5322B677e9BEFD"
#!         }
#!       ],
#!       "expected": [
#!         "5"
#!       ]
#!     },
#!     {
#!       "name": "remainder_one",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "22"
#!           ],
#!           "caller": "0x60fbf4ab56ca0fF68883B546f43B7C5A52ffe33d"
#!         }
#!       ],
#!       "expected": [
#!         "7"
#!       ]
#!     },
#!     {
#!       "name": "remainder_two",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "26"
#!           ],
#!           "caller": "0x40470F186A5Ad520136d4f88510Cb2e0B6A09220"
#!         }
#!       ],
#!       "expected": [
#!         "8"
#!       ]
#!     }
#!   ]
#! }

CONST: constant(uint256) = 3

@external
@pure
def main(witness: uint256) -> uint256:
    return witness / CONST
