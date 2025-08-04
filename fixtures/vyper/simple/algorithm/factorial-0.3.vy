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
#!           "caller": "0x40a3Cae0DE4Ec2Ac25c963AEb813cD526aD2a11d"
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
#!           "caller": "0xc6b72120aedC0dA42B5F2020AbCEA9037d438B9a"
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
#!           "caller": "0xcdD30dbD8fd2251E62449A7C13815eDe972cA1C5"
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
