#! {
#!   "modes": [
#!     "V <=0.3.10"
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
#!           "caller": "0x92dA986c043941Ab7eb7b883F7F65C7359D6DAe4"
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
#!           "caller": "0xd5f60172b0cFB2d8122a445Bf62de1e2a172d3Cc"
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
#!           "caller": "0x969DeBF44Dc071E2d546f1800F80bb24e9E86fd8"
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
    for i in range(1, 100):
        if not i <= n:
            break
        fact *= convert(i, uint256)
    return fact
