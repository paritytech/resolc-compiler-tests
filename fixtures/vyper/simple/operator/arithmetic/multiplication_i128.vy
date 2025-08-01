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
#!           "caller": "0x738e85e439Dc1BDc150cAcB28528815c6e83d9Ed"
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
#!           "caller": "0xdD9f5f43DAfb922DAa79c90754E4ed50E4069ab6"
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
#!           "caller": "0x7a4FCdfB9D344FCF8073060Ccc20f166A067381c"
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
#!           "caller": "0xB9b8f1A96a4bD928C6E5849fF32946C889e28223"
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
#!           "caller": "0x4e49910DB242beC3A9549d49bb04F94469cac6f0"
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
#!           "caller": "0x87cD69656BCB9f378E118A5745F240278EF7F2B7"
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
#!           "caller": "0xCB35920835b5156B5A49f28f1f0A41acab606889"
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
#!           "caller": "0x46aC7a9f8ec805Ab0d605218F3A856992844F6c5"
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
#!           "caller": "0xD680B2a77E1b7d391abb0e40bdE6B6E731635150"
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
