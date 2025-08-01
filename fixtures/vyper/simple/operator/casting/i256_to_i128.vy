#! {
#!   "modes": [
#!     "V >=0.4.0"
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
#!           "caller": "0x66Db4e82382bF4fCCa1638dEc3cA42Da0b8c28B2"
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
#!           "caller": "0x9409a914aAb868121E9060c4408964C231a5c6DC"
#!         }
#!       ],
#!       "expected": [
#!         "42"
#!       ]
#!     },
#!     {
#!       "name": "max",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "170141183460469231731687303715884105727"
#!           ],
#!           "caller": "0x8523014C998dfF1043775E5f0CB5597Ba4b89710"
#!         }
#!       ],
#!       "expected": [
#!         "170141183460469231731687303715884105727"
#!       ]
#!     },
#!     {
#!       "name": "overflow_negative_minimal",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "-170141183460469231731687303715884105729"
#!           ],
#!           "caller": "0x18901418A61D437B44b3B43e85E329f48F8F242c"
#!         }
#!       ],
#!       "expected": {
#!         "return_data": [],
#!         "exception": true
#!       }
#!     },
#!     {
#!       "name": "overflow_negative",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "-180141183460469231731687303715887105728"
#!           ],
#!           "caller": "0x39C472D662C95f02A86b53a6cD4dA87801d46c17"
#!         }
#!       ],
#!       "expected": {
#!         "return_data": [],
#!         "exception": true
#!       }
#!     },
#!     {
#!       "name": "overflow_positive_minimal",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "170141183460469231731687303715884105728"
#!           ],
#!           "caller": "0x3B0EeDa5F5daEBce31944060e120679eb284BaDD"
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
#!             "190141183460469231731687303715884105728"
#!           ],
#!           "caller": "0xB9c6708bae460B859Dcf511885EB4AE78a41f3cD"
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
def main(a: int256) -> int128:
    return convert(a, int128)
