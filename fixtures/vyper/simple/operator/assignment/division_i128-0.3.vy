#! {
#!   "modes": [
#!     "V <=0.3.10"
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
#!           "caller": "0x8C4830418C8e12925366CDC4Ed43b27E8775f18D"
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
#!           "caller": "0x1065b436B9e0B091B7dE840C30b114D9919b9A44"
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
#!           "caller": "0x30eC9b9efDBF5706250FBfd49d8da386DA54Dd96"
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
#!           "caller": "0x4dc5d9d2bE537fBb060C9202Cb7073FF0E23Bf6A"
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
#!           "caller": "0x6cDeD59C9aA7F503702B183C6E974A983A841B58"
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
#!           "caller": "0x64af3e60B07029dED1a36feD1fb57A24F7eF443b"
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
#!           "caller": "0x14A89B1a945c7aa940bDCaD156C25eb38B6A72cD"
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
#!           "caller": "0xb18ac8b58c15DD7B2C2bD3aE7C3025c040b4EaFC"
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
#!           "caller": "0x99fCB60BC83Fa187AF825262A387F8f660609f33"
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
#!           "caller": "0xFb0B0F25771376674bfc54F09667CE114b5a1205"
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
#!           "caller": "0xB07fFAe3AC13c80a5F5d2020978AaaF5DaC6151C"
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
#!           "caller": "0xC58C5Bc1bb6F8b6a3804D361E07EEfca5749f225"
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
#!           "caller": "0xE4ADaBDE594D7661a51Beb556168d2BFe07B6E45"
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
#!           "caller": "0x3E6D81D3aa91860c973dF585D78aBA5028022419"
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
#!           "caller": "0x2E9CF9c7518F03eCbfba88a3e478262cF60be252"
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
#!           "caller": "0xf2ef6F500538124e687028F3F45a9B86695Aff17"
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
#!           "caller": "0xA953293Bc5477A548E65D869778A75b114d17099"
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
    c /= b
    return c
