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
#!           "caller": "0xFe1Df84702112ffa4B59CB75eb20CaD18f63580F"
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
#!           "caller": "0x47d1e30Bc67420bCd6bA9725812b595462e2b18b"
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
#!           "caller": "0x0ba0E54026E9a4Ca4f66f1666343db88EB4B5F10"
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
#!           "caller": "0xeF88A6434C2c806e6269711b5Ba7eB0fC555f617"
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
#!           "caller": "0x09A64DE937e6cC8e2F15a24F697cf3833A1bFE19"
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
