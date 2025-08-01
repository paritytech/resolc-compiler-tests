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
#!           "caller": "0x3e4e819e13C2bF31B4ff5598c208d5dcC510e5C5"
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
#!           "caller": "0x990f04E190C6798e5e0f0ba7F8ac7406DF2Ced29"
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
#!           "caller": "0xc9A44DeE55F98520B4064707E6441d00491FEb9a"
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
