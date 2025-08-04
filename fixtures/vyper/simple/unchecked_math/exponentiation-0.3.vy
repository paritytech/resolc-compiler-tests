#! {
#!   "modes": [
#!     "V <=0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "default",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "32",
#!             "34"
#!           ],
#!           "caller": "0x2c7a8327d18a39D748a6734c824EF7a8621d01Ae"
#!         }
#!       ],
#!       "expected": [
#!         "1496577676626844588240573268701473812127674924007424"
#!       ]
#!     },
#!     {
#!       "name": "overflow",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "2223223",
#!             "344313"
#!           ],
#!           "caller": "0xE99fFE43f15500cf071e6C2227Ca151d4E5fB8F1"
#!         }
#!       ],
#!       "expected": [
#!         "100285653084869015597090712088097646536078582653240989835715781990963135627703"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def main(a: uint256, b: uint256) -> uint256:
    return pow_mod256(a, b)
