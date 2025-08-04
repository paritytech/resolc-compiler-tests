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
#!           "caller": "0x461002e288E1986Cb26e9f02D42EE9bba57d876A"
#!         }
#!       ],
#!       "expected": [
#!         "1"
#!       ]
#!     },
#!     {
#!       "name": "ordinar",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "3"
#!           ],
#!           "caller": "0x136c68506e97876C64C676A5A17AfcbAa7275695"
#!         }
#!       ],
#!       "expected": [
#!         "8"
#!       ]
#!     },
#!     {
#!       "name": "to_max",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "7"
#!           ],
#!           "caller": "0xa44b441D57666e967E40eC1c42c0Dd9c2971e01F"
#!         }
#!       ],
#!       "expected": [
#!         "128"
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
#!           "caller": "0xdfaF80a0ea36E6d60A9737e7f63dE5BDA29917F6"
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
#!             "8"
#!           ],
#!           "caller": "0x518C5C656ED8C8d3B0b2C2E13BaF3569be398f11"
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
#!             "255",
#!             "255"
#!           ],
#!           "caller": "0x96dbA8971f2cb41A7777A347D1BC35b305b507f5"
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
def main(a: uint8) -> uint8:
    return 2 ** a
