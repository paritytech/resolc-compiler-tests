#! {
#!   "modes": [
#!     "V >=0.4.0"
#!   ],
#!   "cases": [
#!     {
#!       "name": "zero_by_zero",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "0",
#!             "0"
#!           ],
#!           "caller": "0xDfC3751Ed09C98a09d1188385cb57795a37d2fB1"
#!         }
#!       ],
#!       "expected": {
#!         "return_data": [],
#!         "exception": true
#!       }
#!     },
#!     {
#!       "name": "ordinar_by_zero",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "42",
#!             "0"
#!           ],
#!           "caller": "0x9D17cEd2C61aD0321f189E77e03Cc3B0CD1612Bd"
#!         }
#!       ],
#!       "expected": {
#!         "return_data": [],
#!         "exception": true
#!       }
#!     },
#!     {
#!       "name": "max_by_zero",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "255",
#!             "0"
#!           ],
#!           "caller": "0x74F6D206951af06DddDA5f3D58358478038289f9"
#!         }
#!       ],
#!       "expected": {
#!         "return_data": [],
#!         "exception": true
#!       }
#!     },
#!     {
#!       "name": "ordinar",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "42",
#!             "7"
#!           ],
#!           "caller": "0x411f1237Be5966CdB6cd9B25a87d61E3E3D52bAf"
#!         }
#!       ],
#!       "expected": [
#!         "0"
#!       ]
#!     },
#!     {
#!       "name": "ordinar_max_remainder",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "48",
#!             "7"
#!           ],
#!           "caller": "0x26b9aCe0961e02427E81E4EBa696ed7EAa28C6E3"
#!         }
#!       ],
#!       "expected": [
#!         "6"
#!       ]
#!     },
#!     {
#!       "name": "ordinar_next",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "49",
#!             "7"
#!           ],
#!           "caller": "0xfC781bB93eAA2D46ff27111a3f421FDb45dBD5C9"
#!         }
#!       ],
#!       "expected": [
#!         "0"
#!       ]
#!     },
#!     {
#!       "name": "to_max",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "255",
#!             "128"
#!           ],
#!           "caller": "0x9C997D8f63dEcb52350f357EE6f976E802E34EdF"
#!         }
#!       ],
#!       "expected": [
#!         "127"
#!       ]
#!     },
#!     {
#!       "name": "to_min",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "255",
#!             "255"
#!           ],
#!           "caller": "0xe2B12bA958132077070fd5c14517A0F58Ee8FEf3"
#!         }
#!       ],
#!       "expected": [
#!         "0"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def main(a: uint8, b: uint8) -> uint8:
    c: uint8 = a
    c %= b
    return c
