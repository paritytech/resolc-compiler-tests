#! {
#!   "modes": [
#!     "V >=0.4.0"
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
#!           "caller": "0x04E73F3a0cdC2341112211F699f78CE697aAe9A1"
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
#!           "caller": "0x2f7939cb9F3FEa9B560c4F0F131a937d541daf09"
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
#!           "caller": "0x451fd0451D94445c3C3D856e5cD1c47a2B453FDb"
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
#!           "caller": "0x48dC5E801Ef564D8641772Fd7579D1290Fe39979"
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
#!           "caller": "0x250fe7BC1A3F829630bc42A40E6bC92e000d9bA3"
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
