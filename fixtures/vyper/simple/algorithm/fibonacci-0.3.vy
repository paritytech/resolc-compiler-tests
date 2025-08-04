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
#!           "caller": "0xe1E32A0Bb0025Bb5C1258968b4298Ac20C30131f"
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
#!           "caller": "0x2b16c265d3e55b5EAFb9B91B80c78fa99Ba7963A"
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
#!           "caller": "0x670679dBedecE33e0b1C2C8216f06bc87Ae34F94"
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
