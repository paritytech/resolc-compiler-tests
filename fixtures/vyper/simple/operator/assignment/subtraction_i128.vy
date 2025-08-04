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
#!           "caller": "0xf9E95262834b539B3DC5D8A01af13137503d9b0a"
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
#!             "42",
#!             "64"
#!           ],
#!           "caller": "0xfef22652A1E842BF00D289D43C98F389DD532851"
#!         }
#!       ],
#!       "expected": [
#!         "-22"
#!       ]
#!     },
#!     {
#!       "name": "to_min",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "-1",
#!             "170141183460469231731687303715884105727"
#!           ],
#!           "caller": "0xA13bBDCd6c547f6ffa28E8ccc886B2Ae2143F802"
#!         }
#!       ],
#!       "expected": [
#!         "-170141183460469231731687303715884105728"
#!       ]
#!     },
#!     {
#!       "name": "to_max",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "170141183460469231731687303715884105727",
#!             "0"
#!           ],
#!           "caller": "0x0F24a94500e7B0531aAB9D991cBA4a721bA2397c"
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
#!             "-69200000000000000000000000000000000000",
#!             "110141183460469231731687303715884105727"
#!           ],
#!           "caller": "0x61bf45039EcBBAb60D80adB5a1891Be722d5dCb0"
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
#!             "-170141183460469231731687303715884105728",
#!             "1"
#!           ],
#!           "caller": "0x592015D39ECFE746dC508843F87aB8d692D841dF"
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
    c: int128 = a
    c -= b
    return c
