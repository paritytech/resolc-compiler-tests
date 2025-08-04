#! {
#!   "modes": [
#!     "V <=0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "zero_zero",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "0",
#!             "0"
#!           ],
#!           "caller": "0xF68F735Ff7c2Abae506D8E5Bc2b448F04199658f"
#!         }
#!       ],
#!       "expected": [
#!         "0"
#!       ]
#!     },
#!     {
#!       "name": "ordinar",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "-42",
#!             "25"
#!           ],
#!           "caller": "0xd74Be6288a7907594C110Ae0Ce184885E138e4C2"
#!         }
#!       ],
#!       "expected": [
#!         "-17"
#!       ]
#!     },
#!     {
#!       "name": "to_max",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "24536345643564564356456464543346521121",
#!             "145604837816904667375230839172537584606"
#!           ],
#!           "caller": "0x29273d888C3f5df600399690266Be701F7f631aF"
#!         }
#!       ],
#!       "expected": [
#!         "170141183460469231731687303715884105727"
#!       ]
#!     },
#!     {
#!       "name": "overflow",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "24536345643564564356456464543346529121",
#!             "165604837816904667375230839172537584606"
#!           ],
#!           "caller": "0xe2Fe9ff82d4B86EDdb56dF89640a3C0F0de326ae"
#!         }
#!       ],
#!       "expected": {
#!         "return_data": [],
#!         "exception": true
#!       }
#!     },
#!     {
#!       "name": "overflow_minimal",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "24536345643564564356456464543311212121",
#!             "145604837816904667375230839172572893607"
#!           ],
#!           "caller": "0xaD29a5FDc368914bC63B1373cF6597d6c27B3716"
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
def main(a: int128, b: int128) -> int128:
    return a + b
