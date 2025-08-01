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
#!           "caller": "0xfC7c0f73B14c65fE6E84CCEF7a069f73441505f5"
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
#!           "caller": "0x23bf11DDfa634df17ee1950B418ED9DDEBC436a0"
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
#!           "caller": "0x0eb512934A760fB577bE662b6D0dDE3aD5B4C62d"
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
    return witness // CONST
