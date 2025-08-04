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
#!           "caller": "0x99b4b254f9b24E5Bb5d715C6F7a32DA50682984D"
#!         }
#!       ],
#!       "expected": [
#!         "1"
#!       ]
#!     },
#!     {
#!       "name": "ordinar_positive",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "4"
#!           ],
#!           "caller": "0xe55D5B5f137434Ac91B831A7ff51F22B7E1a5aB6"
#!         }
#!       ],
#!       "expected": [
#!         "81"
#!       ]
#!     },
#!     {
#!       "name": "ordinar_negative",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "-4"
#!           ],
#!           "caller": "0xA5f9271aFE75b39eb55429fB6fCDA9e4d5B15C62"
#!         }
#!       ],
#!       "expected": {
#!         "return_data": [],
#!         "exception": true
#!       }
#!     },
#!     {
#!       "name": "to_max",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "80"
#!           ],
#!           "caller": "0x8c40045F1f70D94BE8db11d99E8e38dB89cf09e8"
#!         }
#!       ],
#!       "expected": [
#!         "147808829414345923316083210206383297601"
#!       ]
#!     },
#!     {
#!       "name": "overflow",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "100"
#!           ],
#!           "caller": "0x1f0A04B02D253E8AC273d7a5eb0Ad5466eBd3a1E"
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
#!             "81"
#!           ],
#!           "caller": "0x198251efF59246cc01c20979C06Cd38C2e547ACC"
#!         }
#!       ],
#!       "expected": {
#!         "return_data": [],
#!         "exception": true
#!       }
#!     },
#!     {
#!       "name": "max_pow_overflow",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "340282366920938463463374607431768211455"
#!           ],
#!           "caller": "0x238Ba995Fe1136aa9c084F6Aa70f9Fa5dd8dC2E9"
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
def main(a: int128) -> int128:
    return (-3) ** a
