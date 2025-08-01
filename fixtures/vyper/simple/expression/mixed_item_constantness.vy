#! {
#!   "modes": [
#!     "V >=0.4.0"
#!   ],
#!   "cases": [
#!     {
#!       "name": "main",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "25"
#!           ],
#!           "caller": "0xdC01d79EEA4E69B780926821267a1E631922c4cd"
#!         }
#!       ],
#!       "expected": [
#!         "131"
#!       ]
#!     }
#!   ]
#! }

CONST: constant(uint256) = 42

@external
@pure
def main(witness: uint256) -> uint256:
    local: uint256 = 64

    return CONST + local + witness
