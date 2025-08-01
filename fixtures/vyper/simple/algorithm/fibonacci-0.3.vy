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
#!             "12"
#!           ],
#!           "caller": "0x67eb0d3F045BCc2368C649dC14Bc922845Aa4234"
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
#!           "caller": "0xb0eBB350e769A66b5B1527f4f92719B2E20814f8"
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
#!           "caller": "0x1B594f4691d311Ed3ee03064536dD90BC986E4A6"
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

    for i in range(1, 100):
        if not i <= n - 2:
            break
        fibo = value1 + value2
        value1 = value2
        value2 = fibo

    return fibo
