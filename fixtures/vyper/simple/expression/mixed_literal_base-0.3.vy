#! {
#!   "modes": [
#!     "V <=0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "main",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "42"
#!           ],
#!           "caller": "0x7a8034C665a71CAc13C0a1d9c0aE01a77ec9bBFe"
#!         }
#!       ],
#!       "expected": [
#!         "210"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def main(witness: uint8) -> uint8:
    return convert(convert(witness, uint256) + convert(42e0, uint256) + convert(0x2a, uint256) + 42 + convert(0x2A, uint256), uint8)
