#! {
#!   "modes": [
#!     "V <=0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "_false",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "0"
#!           ],
#!           "caller": "0xFca30d18aD514287B38B35353bB1ea7Fb99a3f2D"
#!         }
#!       ],
#!       "expected": [
#!         "1"
#!       ]
#!     },
#!     {
#!       "name": "_true",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "1"
#!           ],
#!           "caller": "0x180826E27e0b32CaF77563ad6a7464a4fdA671bF"
#!         }
#!       ],
#!       "expected": [
#!         "0"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def main(a: bool) -> bool:
    return not a
