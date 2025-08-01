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
#!           "caller": "0x661037471DF8A9C001814Be39717D1E1E7112c39"
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
#!           "caller": "0x509D7cD7ecd35699382a7c54b454a28C7dc887e8"
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
#!           "caller": "0x43ec9bc9AA2230C2011C04cA91B267f7Da91B074"
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
#!           "caller": "0x093e3CFD64C76733AfFa3197E3f2DD72b163Bb1c"
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
#!           "caller": "0x7A19b6A346a098428C0E7075f627A3f65e50B9d9"
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
#!           "caller": "0x4043696275055A5B9B19bFfFd086F01cB2dDedfE"
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
#!           "caller": "0x58e8e4A4a1Ae27a00bA0cB07B38d3A31E4e9EECd"
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
#!           "caller": "0x813673433d4eA7fDB1800566b5642Df59aa4B434"
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
#!           "caller": "0x9CcB61e268e3B8C101497Ba4Afb16C2e32bC67e3"
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
#!           "caller": "0x82a468C0B464EE72A66F0437413AdF52acaA5517"
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
#!           "caller": "0x51637048F2F12d663d245016d269151166e0C59e"
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
#!           "caller": "0xe384de5a82e947fa54bb1BdC0ca8d8851d1c3F51"
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
#!           "caller": "0xE1d5f4cEAC924BeDb31e2F6059419fbb52ea0086"
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
#!           "caller": "0x4CcedB8c4e58a259D931F8daF5e7ef19adE5dD67"
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
#!           "caller": "0x85b992659F67c4946CbdD588f9256E81cF2BfBAb"
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
#!           "caller": "0x6497772FDc65eB784c0C0189AF5Eb3BC5AbFDD9e"
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
#!           "caller": "0x62478Cb7b995fA401E3F81Ce1f7d4D4014C88B93"
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
#!           "caller": "0x3639534D87C8d41147113a7c996B135b8118d154"
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
#!           "caller": "0x1d509923b44F3eCE6951160e6e18A8E8E299655a"
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
