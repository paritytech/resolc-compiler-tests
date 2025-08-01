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
#!           "caller": "0x300250324CE98731D9A8704e43bCEf6436326852"
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
#!           "caller": "0x2954eB740e01b720B35a9FD09174b7b50D543D2A"
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
#!           "caller": "0xdb79ee952914cB634ae22d3B5E84cf2471F042F5"
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
#!           "caller": "0x9D001c26279a0460eD9A5c4e8E40a44cd7d45630"
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
#!           "caller": "0xD7E69b20695EFc2575aD12f2EE981eC60d900666"
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
