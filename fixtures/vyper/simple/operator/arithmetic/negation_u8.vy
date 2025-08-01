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
#!           "caller": "0x0D7AA98676CD98b457335FB6732A00118798f2fB"
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
#!           "caller": "0x19ACd1823afFcDdd0897A1864e17d66efaf76B73"
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
#!           "caller": "0x9Ae80D1877A5dfB6b021Efc16580188861fb4582"
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
#!           "caller": "0x8E92Cc637215c0a21074fF8B91C3125955dAAA35"
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
#!           "caller": "0x140CF59047cb912Db4BC3fb35037A1E7e9609c68"
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
