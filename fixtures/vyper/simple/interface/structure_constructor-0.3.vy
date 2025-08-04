#! {
#!   "modes": [
#!     "V <=0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "first",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "42"
#!           ],
#!           "caller": "0x4bb56226fAa33d86019148D8b496B5A0ea2D9EBB"
#!         }
#!       ],
#!       "expected": [
#!         "42"
#!       ]
#!     },
#!     {
#!       "name": "second",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "64"
#!           ],
#!           "caller": "0x5558D7eb462aa0cC2785ce49701c08C4705E3eAf"
#!         }
#!       ],
#!       "expected": [
#!         "64"
#!       ]
#!     },
#!     {
#!       "name": "third",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "65535"
#!           ],
#!           "caller": "0xc6ADb5F751016D9Df6F9fa1a60557D3111434668"
#!         }
#!       ],
#!       "expected": [
#!         "65535"
#!       ]
#!     }
#!   ]
#! }

struct Data:
    a: uint256

@internal
@pure
def _new(a: uint256) -> Data:
    return Data({a: a})

@external
def main(witness: uint256) -> uint256:
    return self._new(witness).a

