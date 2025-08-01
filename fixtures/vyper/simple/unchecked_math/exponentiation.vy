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
#!           "caller": "0x1cf48ad5e411EF0E63441b5656c1C9d401759064"
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
#!           "caller": "0xF2eD9502d3446Ef1B7C87015Db48e4704690297A"
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
