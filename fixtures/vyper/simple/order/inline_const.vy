#! {
#!   "modes": [
#!     "V >=0.4.0"
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
#!           "caller": "0x95d2F1bC1b292a7E21D5B1109229e3de518dA950"
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
#!           "caller": "0x4c99F3dB21DDC40BAd5E4cc3FCAeE167782c786E"
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
#!           "caller": "0x04aeb3413b0bB0B25b9544E64dA2dbb76dF67Bcf"
#!         }
#!       ],
#!       "expected": [
#!         "8"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def main(witness: uint256) -> uint256:
    return witness // 3
