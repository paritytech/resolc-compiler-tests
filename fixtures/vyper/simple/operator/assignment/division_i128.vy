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
#!           "caller": "0xe8334111f66caD224f2675B1752569668eb7E568"
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
#!           "caller": "0x1ee51b88A1323830334C6B78cb1E658BdfeaF69e"
#!         }
#!       ],
#!       "expected": {
#!         "return_data": [],
#!         "exception": true
#!       }
#!     },
#!     {
#!       "name": "min_by_zero",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "-170141183460469231731687303715884105728",
#!             "0"
#!           ],
#!           "caller": "0x70f203eE663A5c1dCC1526d9C005ED533524444f"
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
#!             "170141183460469231731687303715884105727",
#!             "0"
#!           ],
#!           "caller": "0xcC75E898F9A140ACffd4d73A7A5c22fD1f1e036c"
#!         }
#!       ],
#!       "expected": {
#!         "return_data": [],
#!         "exception": true
#!       }
#!     },
#!     {
#!       "name": "ordinar_positive",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "42",
#!             "7"
#!           ],
#!           "caller": "0x9CB0DB5f223873dfD62a1C4371aFF3494003CF43"
#!         }
#!       ],
#!       "expected": [
#!         "6"
#!       ]
#!     },
#!     {
#!       "name": "ordinar_negative_divided",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "-42",
#!             "7"
#!           ],
#!           "caller": "0xD673d897Aa75E901eA5464E3F74A4613F703311c"
#!         }
#!       ],
#!       "expected": [
#!         "-6"
#!       ]
#!     },
#!     {
#!       "name": "ordinar_negative_divider",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "42",
#!             "-7"
#!           ],
#!           "caller": "0x19b0cfb545F29d91947B5272d7FCE6C9e0Cf7ec0"
#!         }
#!       ],
#!       "expected": [
#!         "-6"
#!       ]
#!     },
#!     {
#!       "name": "ordinar_negative_both",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "-42",
#!             "-7"
#!           ],
#!           "caller": "0xDB88e770d91b39d66BA7DFc888fb1DAfc1E7f661"
#!         }
#!       ],
#!       "expected": [
#!         "6"
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
#!           "caller": "0x0D3F4e0b2C4BC600BE77C3bc2720a6007Ffe9C13"
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
#!           "caller": "0x2C311743D20412e78Ce588CFC038396465cb5d6d"
#!         }
#!       ],
#!       "expected": [
#!         "7"
#!       ]
#!     },
#!     {
#!       "name": "to_min_from_positive",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "170141183460469231731687303715884105727",
#!             "-1"
#!           ],
#!           "caller": "0xeC2F86853a5DE826F8f9084F4E78f332beC85e48"
#!         }
#!       ],
#!       "expected": [
#!         "-170141183460469231731687303715884105727"
#!       ]
#!     },
#!     {
#!       "name": "to_min_from_negative",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "-170141183460469231731687303715884105728",
#!             "1"
#!           ],
#!           "caller": "0x9b93B127d92516ceA6c845c73A35E224A3a14F3A"
#!         }
#!       ],
#!       "expected": [
#!         "-170141183460469231731687303715884105728"
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
#!           "caller": "0x17CBA5875980b4b4E70D21ae822A56321e6ce6fE"
#!         }
#!       ],
#!       "expected": [
#!         "170141183460469231731687303715884105727"
#!       ]
#!     },
#!     {
#!       "name": "to_one_positives",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "170141183460469231731687303715884105727",
#!             "170141183460469231731687303715884105727"
#!           ],
#!           "caller": "0x6AA4E7D844ad8704AD024869dd40711Cc8b8bFE2"
#!         }
#!       ],
#!       "expected": [
#!         "1"
#!       ]
#!     },
#!     {
#!       "name": "to_one_negatives",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "-170141183460469231731687303715884105728",
#!             "-170141183460469231731687303715884105728"
#!           ],
#!           "caller": "0x08100BEee3eD098424480E46c336d0c202db956A"
#!         }
#!       ],
#!       "expected": [
#!         "1"
#!       ]
#!     },
#!     {
#!       "name": "min_to_negative_ordinar",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "-170141183460469231731687303715884105727",
#!             "3"
#!           ],
#!           "caller": "0xF2B37D0cf71191d60Ea81e89258142c098eb4dF0"
#!         }
#!       ],
#!       "expected": [
#!         "-56713727820156410577229101238628035242"
#!       ]
#!     },
#!     {
#!       "name": "max_to_negative_ordinar",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "170141183460469231731687303715884105727",
#!             "-3"
#!           ],
#!           "caller": "0xEA43F02678ff02be68e32E616941e5dFE3002C13"
#!         }
#!       ],
#!       "expected": [
#!         "-56713727820156410577229101238628035242"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def main(a: int128, b: int128) -> int128:
    c: int128 = a
    c //= b
    return c
