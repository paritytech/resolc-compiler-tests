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
#!           "caller": "0x09f871b997A8E9F992E90cE357a6FcFB840BC638"
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
#!             "5"
#!           ],
#!           "caller": "0xbfbD58E96d9fffDcd2aEB4F4FDf4AfCf68f88977"
#!         }
#!       ],
#!       "expected": [
#!         "210"
#!       ]
#!     },
#!     {
#!       "name": "to_max",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "51",
#!             "5"
#!           ],
#!           "caller": "0x438be36c3Ac67E28f1aa302b067AcD4D2DEE6bE8"
#!         }
#!       ],
#!       "expected": [
#!         "255"
#!       ]
#!     },
#!     {
#!       "name": "overflow",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "100",
#!             "5"
#!           ],
#!           "caller": "0x6192357227FCdb25664A624A205aa1FcDcEF151C"
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
#!             "32",
#!             "8"
#!           ],
#!           "caller": "0xbE6674BdCcfA537C51357e140270BF79D3c7Bed3"
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
def main(a: uint8, b: uint8) -> uint8:
    return a * b
