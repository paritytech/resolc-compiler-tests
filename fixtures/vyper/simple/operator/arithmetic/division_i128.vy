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
#!           "caller": "0x19B05f6825C23b102F924DD4Fd026069DB19438E"
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
#!           "caller": "0x78407833Cbb01A0089ABdAFb94CBe28f008F5675"
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
#!           "caller": "0xb4106C37804613B2eFe4fd231ED06fCF4e63Bc1f"
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
#!           "caller": "0x3FfBB4256A15380b6E3Eb80B92b89bF0B564b794"
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
#!           "caller": "0xA0064428Ba16E16ee54253565694594697B66A26"
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
#!           "caller": "0xbd7F16249Fa06888186027C1F7d71BedD1F63C9b"
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
#!           "caller": "0xf5b99Bbe3Bb43323b90862A61944A5C50C153C57"
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
#!           "caller": "0xba6bE85b3791a46d95dA5587421be5e3eEB39703"
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
#!           "caller": "0x146d68D03d4db99b2206b239dcee8aFAa43A74D7"
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
#!           "caller": "0xd102baDafDB85aAE13a07B8fC6C29983Da70363F"
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
#!           "caller": "0x5281952BAdDeed6BffaDF1229a64511e4317A001"
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
#!           "caller": "0x797aE2A1D6E4314b14031F657Cae1f45801058E6"
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
#!           "caller": "0x1b4890c6AA5416DDcd425C20096F573061A11d66"
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
#!           "caller": "0x4205e00bE895acAC18d298ab8eE74dd629CAd5A7"
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
#!           "caller": "0x632e24E41DAa76923f8B0CEb035CE5034b0A6331"
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
#!           "caller": "0x580e14a05816d4B86b4882d82c05c89db1109B5c"
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
    return a // b