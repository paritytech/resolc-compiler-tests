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
#!           "caller": "0xc2995718BD8Ce7ad3E821d93F964cf0EE1F8EF6B"
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
#!           "caller": "0x04db11B9404b495228805d090d72d037d797E57A"
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
#!           "caller": "0x78f3475C8D4D8e0a1Fb85b3D4cC2045f1B004513"
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
    variable: uint256 = 3
    return witness / variable
