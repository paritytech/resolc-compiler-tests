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
#!           "caller": "0x774f69eDb2b55D8E5B6a66918c7B1A1A6cDC1718"
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
#!           "caller": "0x319b229Ed412288332491C8C79Daae1fcc2367c5"
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
#!             "-128",
#!             "0"
#!           ],
#!           "caller": "0xFA671F1bd65B67B4A2d77857DAb52eCce81f92B7"
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
#!             "127",
#!             "0"
#!           ],
#!           "caller": "0x61e3c05D6092b4a8f42b734DdEde117b3bF9922A"
#!         }
#!       ],
#!       "expected": {
#!         "return_data": [],
#!         "exception": true
#!       }
#!     },
#!     {
#!       "name": "zero_positive",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "42",
#!             "7"
#!           ],
#!           "caller": "0xc23c4a54e7df95aDb1775D20651890c7a0Db9eAf"
#!         }
#!       ],
#!       "expected": [
#!         "0"
#!       ]
#!     },
#!     {
#!       "name": "zero_negative_divided",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "-42",
#!             "7"
#!           ],
#!           "caller": "0x612610F3A9f27928d04709f9e61Bc56Dec87930a"
#!         }
#!       ],
#!       "expected": [
#!         "0"
#!       ]
#!     },
#!     {
#!       "name": "zero_negative_divider",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "42",
#!             "-7"
#!           ],
#!           "caller": "0xF232A7a61ce6CD9645cd14BE989C3C7b2a5A1203"
#!         }
#!       ],
#!       "expected": [
#!         "0"
#!       ]
#!     },
#!     {
#!       "name": "zero_negative_both",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "-42",
#!             "-7"
#!           ],
#!           "caller": "0xB0eF28B3ca92E9b3dB68d6F11E1e3ea7B92130A7"
#!         }
#!       ],
#!       "expected": [
#!         "0"
#!       ]
#!     },
#!     {
#!       "name": "ordinar_remainder_positive",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "45",
#!             "7"
#!           ],
#!           "caller": "0xFbe1EBcdBb06F11aEad41d1C673FD2B6845D3a8a"
#!         }
#!       ],
#!       "expected": [
#!         "3"
#!       ]
#!     },
#!     {
#!       "name": "ordinar_remainder_negative_divided",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "-45",
#!             "7"
#!           ],
#!           "caller": "0x4B1B5f4b9F6A6c60cFC9A4bD8B2561cbdbB58018"
#!         }
#!       ],
#!       "expected": [
#!         "-3"
#!       ]
#!     },
#!     {
#!       "name": "ordinar_remainder_negative_divider",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "45",
#!             "-7"
#!           ],
#!           "caller": "0x1aeedE83Ab7B0EeD53A9aE914F11d3b7A3F87425"
#!         }
#!       ],
#!       "expected": [
#!         "3"
#!       ]
#!     },
#!     {
#!       "name": "ordinar_remainder_negative_both",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "-45",
#!             "-7"
#!           ],
#!           "caller": "0x5Be31664256E114548747bFc873877a768ce6098"
#!         }
#!       ],
#!       "expected": [
#!         "-3"
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
#!           "caller": "0x7b1e2Ac4b7e4e2494fadaaDA56EDafd11C4F4Ed8"
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
#!           "caller": "0xa85aeE886876789a36B16BCA97D160D14408773c"
#!         }
#!       ],
#!       "expected": [
#!         "0"
#!       ]
#!     },
#!     {
#!       "name": "max_to_min",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "127",
#!             "127"
#!           ],
#!           "caller": "0x74E3f3f9DD7c78e5E8E1e6CA4567391c1A1DE93b"
#!         }
#!       ],
#!       "expected": [
#!         "0"
#!       ]
#!     },
#!     {
#!       "name": "max_to_max",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "127",
#!             "64"
#!           ],
#!           "caller": "0x58c493B2dE98B16428f6b6E10507B2636D7C9afa"
#!         }
#!       ],
#!       "expected": [
#!         "63"
#!       ]
#!     },
#!     {
#!       "name": "min_to_max",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "-128",
#!             "127"
#!           ],
#!           "caller": "0xeD58118fA3C036B0E9a703bEfdA230167AD2Bfc2"
#!         }
#!       ],
#!       "expected": [
#!         "-1"
#!       ]
#!     },
#!     {
#!       "name": "min_to_negative_ordinar",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "-127",
#!             "3"
#!           ],
#!           "caller": "0x1D70573A3da952b426f83cF934FEb99b45f2dC46"
#!         }
#!       ],
#!       "expected": [
#!         "-1"
#!       ]
#!     },
#!     {
#!       "name": "max_to_negative_ordinar",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "127",
#!             "-3"
#!           ],
#!           "caller": "0xDA35aD29E6aa4ab33f5e96edB586D0A247ee1725"
#!         }
#!       ],
#!       "expected": [
#!         "1"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def main(a: int8, b: int8) -> int8:
    return a % b
