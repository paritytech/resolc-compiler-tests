#! {
#!   "modes": [
#!     "V >=0.4.0"
#!   ],
#!   "cases": [
#!     {
#!       "name": "default",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "115792089237316195423570985008687907853269984665640564039457584007913129639935"
#!           ],
#!           "caller": "0x02B6B70628D25C2085C625BbcA7342F7a27CACbF"
#!         }
#!       ],
#!       "expected": {
#!         "return_data": [],
#!         "exception": true
#!       }
#!     }
#!   ]
#! }

@external
@pure
def main(witness: uint256) -> uint256:
    return witness + 1
