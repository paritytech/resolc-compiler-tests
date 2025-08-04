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
#!           "caller": "0xC607c04528f0C6b6D7EdF703a5E1929ca39b0378"
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
#!           "caller": "0xa779Ca795B099Cc383E0d0e97a58B61F1943787E"
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
#!           "caller": "0x040f2a93221dAed723873652DDCEe933D5d4967e"
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
#!           "caller": "0xF8bEeb304d8F3533f63FEFC2DF5b822362D46a82"
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
#!           "caller": "0x603304804651bDFBeb613aAA2E560417Cc4D7bb4"
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
#!           "caller": "0xe3f25A5152D359fB4731dB8F9851750870aC752D"
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
#!             "-110141183460469231731687303715884105727",
#!             "2"
#!           ],
#!           "caller": "0xC4f72640491b12153B551efAca743f8aB84131c2"
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
#!           "caller": "0x71f11bfc43C9606095C7465dB42308718FE745B1"
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
#!             "21267647932558653966460912964485513216",
#!             "8"
#!           ],
#!           "caller": "0xa99feac602b9bE34CcC0caA3B786D09A3daF46a4"
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
    c *= b
    return c
