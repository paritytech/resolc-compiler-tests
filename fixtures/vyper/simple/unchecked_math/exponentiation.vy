#! {
#!   "modes": [
#!     "V >=0.4.0"
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
#!           "caller": "0xc08243678BEE3b3E0ceb969D74E2c4d53E7E9740"
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
#!           "caller": "0x74FB9C9a332433bFfb36ba0C0Cd6a3A5737b82Bc"
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
