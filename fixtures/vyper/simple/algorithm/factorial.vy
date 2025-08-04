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
#!             "5"
#!           ],
#!           "caller": "0x52a2453C0761A219f545ADDDB1ed0b0D7653ffa8"
#!         }
#!       ],
#!       "expected": [
#!         "120"
#!       ]
#!     },
#!     {
#!       "name": "two",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "6"
#!           ],
#!           "caller": "0x139cDe0F8E813A042d0F4b764b76eA9c7b656FD7"
#!         }
#!       ],
#!       "expected": [
#!         "720"
#!       ]
#!     },
#!     {
#!       "name": "three",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "7"
#!           ],
#!           "caller": "0x04361E4c6fEb6a49597A5ADe8BBDdE52943687d5"
#!         }
#!       ],
#!       "expected": [
#!         "5040"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def main(n: uint8) -> uint256:
    fact: uint256 = 1
    for i: uint8 in range(1, 100):
        if not i <= n:
            break
        fact *= convert(i, uint256)
    return fact
