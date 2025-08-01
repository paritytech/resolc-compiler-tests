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
#!           "caller": "0xa67FA97e558e1CB9604aA81bcCdFc374796702C5"
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
#!           "caller": "0xE7012F65c71D6a14E291B3BA6ED07C1703aC3aF6"
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
#!           "caller": "0xC860EfFB2E51f7C4CE1b510FAF7B7B03d8F47A95"
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
#!           "caller": "0xFd11629bD963b6762C744ee3b1272c3C4D51b4C0"
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
#!           "caller": "0xdAEed12B54663080056426B6FB8571EC5D24e7ec"
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
#!           "caller": "0x1bF4a81De564607Ce4e35fe41BcBBB070174FA16"
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
#!           "caller": "0x2725104139a8fd358A68bC74584E24eD1e512180"
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
#!           "caller": "0xC83e036558e2Dd8642de9F3f3E0975Fad490BcfB"
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
#!           "caller": "0xD356c7BA0CA9e8Ab6dB0Cbe6AE56996d4DdD969F"
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
