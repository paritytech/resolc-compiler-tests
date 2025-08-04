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
#!           "caller": "0x2D733284B7695678B379F7162841587b7A1c21aF"
#!         }
#!       ],
#!       "expected": [
#!         "0"
#!       ]
#!     },
#!     {
#!       "name": "ordinar_positive",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "42",
#!             "3"
#!           ],
#!           "caller": "0x10d4B480f4F73C32A2d92f98D87Cf5DcadfbdAC2"
#!         }
#!       ],
#!       "expected": [
#!         "126"
#!       ]
#!     },
#!     {
#!       "name": "ordinar_negative_first",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "-42",
#!             "3"
#!           ],
#!           "caller": "0x824f0Ee61Ab3bAE45f231835ABd34EC8dbb1Dd4a"
#!         }
#!       ],
#!       "expected": [
#!         "-126"
#!       ]
#!     },
#!     {
#!       "name": "ordinar_negative_second",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "42",
#!             "-3"
#!           ],
#!           "caller": "0x1c969fEde0003d01c81FA4EE0BDADE04B6336Fe1"
#!         }
#!       ],
#!       "expected": [
#!         "-126"
#!       ]
#!     },
#!     {
#!       "name": "ordinar_negative_both",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "-42",
#!             "-3"
#!           ],
#!           "caller": "0x05c14e7254109FE378ad6cee7C1B1BcF10708d2a"
#!         }
#!       ],
#!       "expected": [
#!         "126"
#!       ]
#!     },
#!     {
#!       "name": "to_max",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "170141183460469231731687303715884105727",
#!             "1"
#!           ],
#!           "caller": "0x6EEf4Bd19bE07e6F3Ab03d48604F01d885beF6db"
#!         }
#!       ],
#!       "expected": [
#!         "170141183460469231731687303715884105727"
#!       ]
#!     },
#!     {
#!       "name": "overflow_negative",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "-170141183460469231731687303605884105727",
#!             "2"
#!           ],
#!           "caller": "0x13DC7d652E13cC7A0cF4eAfc40AD43c67bf548e3"
#!         }
#!       ],
#!       "expected": {
#!         "return_data": [],
#!         "exception": true
#!       }
#!     },
#!     {
#!       "name": "overflow_positive",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "110141183460469231731687303715884105727",
#!             "2"
#!           ],
#!           "caller": "0xf00400D877791B392A19B2B8A2845e7E35292935"
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
#!             "16",
#!             "10633823966279326983230456482242756608"
#!           ],
#!           "caller": "0xF25e830b239bdf9289D41957CFaC52A3aED69593"
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
    return a * b
