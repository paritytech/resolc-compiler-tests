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
#!           "caller": "0xF40C12CDBfB0Ac831cD00b0568E30b46C75F9c62"
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
#!           "caller": "0xC81FAAb70F07769E4e334dDeD61eE114A024cd7F"
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
#!           "caller": "0x66b21b6251e2C9fB427aa0A4fa8A29b7D2352144"
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
#!           "caller": "0xD5265a1c90Ad99B6b63706d0a1721CDaD685e57E"
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
#!           "caller": "0x1666b55D41c73C4670b840079C67309E6bd77E8E"
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
