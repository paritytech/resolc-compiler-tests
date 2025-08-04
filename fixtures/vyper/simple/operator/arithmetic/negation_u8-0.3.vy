#! {
#!   "modes": [
#!     "V <=0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "zero",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "0"
#!           ],
#!           "caller": "0xa7AadacBB486F76fA612903cE992c57Ade8F8462"
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
#!             "42"
#!           ],
#!           "caller": "0x22c171cBd478639BEF74E0b4D0d4703511B2C0d2"
#!         }
#!       ],
#!       "expected": [
#!         "-42"
#!       ]
#!     },
#!     {
#!       "name": "max_to_min",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "127"
#!           ],
#!           "caller": "0x0ca3a70d1Ff7bb87D9b3da703525B6C77D74B4A9"
#!         }
#!       ],
#!       "expected": [
#!         "-127"
#!       ]
#!     },
#!     {
#!       "name": "overflow",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "200"
#!           ],
#!           "caller": "0x7ffeb560c553b733d668127af895fAf0111d4BbD"
#!         }
#!       ],
#!       "expected": [
#!         "-200"
#!       ]
#!     },
#!     {
#!       "name": "overflow_minimal",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "129"
#!           ],
#!           "caller": "0x2D02D6b1846e32ce52ea571cA3670FA453fe3F39"
#!         }
#!       ],
#!       "expected": [
#!         "-129"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def main(a: uint8) -> int128:
    return -convert(a, int128)
