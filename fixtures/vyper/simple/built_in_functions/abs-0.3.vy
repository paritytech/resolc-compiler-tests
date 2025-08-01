#! {
#!   "modes": [
#!     "V <=0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "positive",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "456789765435678908765"
#!           ],
#!           "caller": "0x3c2Ef336D9fbD570Ec1acb4FfA6b03944732f8e2"
#!         }
#!       ],
#!       "expected": [
#!         "456789765435678908765"
#!       ]
#!     },
#!     {
#!       "name": "negative",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "-3423453453453453454567897345346789345340584375465"
#!           ],
#!           "caller": "0xE8bBde593C5F4BCa861292a4F0f23c3dADCc2F3b"
#!         }
#!       ],
#!       "expected": [
#!         "3423453453453453454567897345346789345340584375465"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def main(a: int256) -> int256:
    return abs(a)
