#! {
#!   "modes": [
#!     "V >=0.4.0"
#!   ],
#!   "cases": [
#!     {
#!       "name": "one",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "12"
#!           ],
#!           "caller": "0xC26c3ae693b280BDc000c8f8BF3B772e33A92aa5"
#!         }
#!       ],
#!       "expected": [
#!         "89"
#!       ]
#!     },
#!     {
#!       "name": "two",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "14"
#!           ],
#!           "caller": "0xB2465753e8990423f00710e7fe3F8387780f88bC"
#!         }
#!       ],
#!       "expected": [
#!         "233"
#!       ]
#!     },
#!     {
#!       "name": "three",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "16"
#!           ],
#!           "caller": "0x537e1FA5B55Ac01244a2E227cB9E38dd8AaBE2Ba"
#!         }
#!       ],
#!       "expected": [
#!         "610"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def main(n: uint8) -> uint256:
    value1: uint256 = 0
    value2: uint256 = 1
    fibo: uint256 = value1

    for i: uint8 in range(1, 100):
        if not i <= n - 2:
            break
        fibo = value1 + value2
        value1 = value2
        value2 = fibo

    return fibo
