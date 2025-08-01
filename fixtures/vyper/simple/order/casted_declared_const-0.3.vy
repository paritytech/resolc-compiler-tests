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
#!           "caller": "0x7fBb92DCffE3a40e62566465A753632CfD110843"
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
#!           "caller": "0x03F8B06e758e7BC601759EcB7f02F4FF02D9Ea58"
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
#!           "caller": "0xaf0DdB407b8CE75C102A97Ea81B9b2b033d470d8"
#!         }
#!       ],
#!       "expected": [
#!         "8"
#!       ]
#!     }
#!   ]
#! }

CONST: constant(uint8) = 3

@external
@pure
def main(witness: uint256) -> uint256:
    return witness / convert(CONST, uint256)
