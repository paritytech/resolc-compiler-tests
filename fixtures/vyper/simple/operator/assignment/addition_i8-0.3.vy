#! {
#!   "modes": [
#!     "V 0.3.9",
#!     "V 0.3.10"
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
#!           "caller": "0x8433c2b6bcB09f838d836F07FbcCD30B71B7b3BC"
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
#!           "caller": "0x0ce4A1D84E724D2F32B5985846389FbC83A38934"
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
#!             "42",
#!             "85"
#!           ],
#!           "caller": "0xc98c1BD1286a670E5dE1bF64216f13A2E1e34f74"
#!         }
#!       ],
#!       "expected": [
#!         "127"
#!       ]
#!     },
#!     {
#!       "name": "overflow",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "100",
#!             "50"
#!           ],
#!           "caller": "0x01dC9838c654EdC3102805F1B33297C28Cb4d769"
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
#!             "100",
#!             "28"
#!           ],
#!           "caller": "0xECDEFc82cD1b210F3db5d7d2cF57DfCE2a36b570"
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
def main(a: int8, b: int8) -> int8:
    c: int8 = a
    c += b
    return c
