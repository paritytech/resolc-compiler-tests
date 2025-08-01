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
#!           "caller": "0xB630e6B1bDD26994D33D59d6bd2e1eDAEC2914E2"
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
#!           "caller": "0x4891325fEe9d7b7D15c365248eF4B5d26c59654B"
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
#!           "caller": "0x8D0fF7Df781D66f383C4a71e9562CdEB687026a1"
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
#!           "caller": "0x736C2cA9c7832AeF59f9CF0898E0ed04A3B99d9E"
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
#!           "caller": "0x2e64a1a67b55ed0968568c6082dE441F9E8Ca41a"
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
#!           "caller": "0x9527ac5197b0ade193c8aF4E8A82b618E75eE0d6"
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
#!           "caller": "0x8D5C49A82476124E9C8476Ac7D274bCB6De88656"
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
#!           "caller": "0x32AfE83f6E45DD4B168eF38585F9EcDAf72EA2C9"
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
#!           "caller": "0x9A1c42A3948f4E4a13979593e9F20B2F4422877F"
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
#!           "caller": "0x98a54FB27604a0bE9BB7fD39c2b575916Cf8623F"
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
#!           "caller": "0x414Bc35dF8C02F7c89b7ccf9646f47DfE3BA8561"
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
#!           "caller": "0x70ac9f6DcaC139BDc40a7E8a0Ce3bEE1D196B66D"
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
#!           "caller": "0x39eB20c235E76d00b78fdAed384DdD111589ed9a"
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
#!           "caller": "0xc61A6e9525C345EeE850cDf933dC467AB9a9E228"
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
#!           "caller": "0x22f5dbB48F0963C49980c2C6B2ea910917C37ef7"
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
#!           "caller": "0xF0c089fef4De467bF3a2E63b2B2344EF1a275EF9"
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
#!           "caller": "0x2ED113283EC02a8731c956e003e5B4f2368BDdC8"
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
#!           "caller": "0xa798B9641b905bf0ce9D6B492D596F34E0D603dD"
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
#!           "caller": "0x3C23e63f58403053ac3486Cab6AD3C2ED9C002eb"
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
    c: int8 = a
    c %= b
    return c
