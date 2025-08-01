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
#!           "caller": "0xcF7E5dbBfce8DC3e7601bC961506EB538Bf7c160"
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
#!           "caller": "0xc1f01Aff11d60D67a2f3fa642eB89dfC541A34b6"
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
