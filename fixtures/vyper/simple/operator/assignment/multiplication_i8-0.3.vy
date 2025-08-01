#! {
#!   "modes": [
#!     "V 0.3.9",
#!     "V 0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "zero_zero",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "0",
#!             "0"
#!           ],
#!           "caller": "0x049eF2574E064B9300C4a274007aBE9FEF285e9F"
#!         }
#!       ],
#!       "expected": [
#!         "0"
#!       ]
#!     },
#!     {
#!       "name": "ordinar_positive",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "42",
#!             "3"
#!           ],
#!           "caller": "0x226C6F38d5A7Be2531ABa74aCC0cbdB01c43a40f"
#!         }
#!       ],
#!       "expected": [
#!         "126"
#!       ]
#!     },
#!     {
#!       "name": "ordinar_negative_first",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "-42",
#!             "3"
#!           ],
#!           "caller": "0x584901BDec31EEB3E699eb23C23d3A471F699F7B"
#!         }
#!       ],
#!       "expected": [
#!         "-126"
#!       ]
#!     },
#!     {
#!       "name": "ordinar_negative_second",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "42",
#!             "-3"
#!           ],
#!           "caller": "0xC43d4f0Ea6234adB0C5C46e6b6A8b57376F79576"
#!         }
#!       ],
#!       "expected": [
#!         "-126"
#!       ]
#!     },
#!     {
#!       "name": "ordinar_negative_both",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "-42",
#!             "-3"
#!           ],
#!           "caller": "0x21A5AFBF6BE075BF5Ae5e173Ad356c609278d9d1"
#!         }
#!       ],
#!       "expected": [
#!         "126"
#!       ]
#!     },
#!     {
#!       "name": "to_max",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "127",
#!             "1"
#!           ],
#!           "caller": "0x9bC4D307838419808D4eB8A8948B2a7280f27D1b"
#!         }
#!       ],
#!       "expected": [
#!         "127"
#!       ]
#!     },
#!     {
#!       "name": "overflow_negative",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "-100",
#!             "2"
#!           ],
#!           "caller": "0x93dF501513a21603a4e15FbE12Aa2fF75e6369C2"
#!         }
#!       ],
#!       "expected": {
#!         "return_data": [],
#!         "exception": true
#!       }
#!     },
#!     {
#!       "name": "overflow_positive",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "100",
#!             "2"
#!           ],
#!           "caller": "0xcE0186a8c428cCa17D1B023a3528078381199842"
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
#!             "16",
#!             "8"
#!           ],
#!           "caller": "0x09A103AE5781A0f603Bf31A95A55e294BA4778aD"
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
def main(a: int8, b: int8) -> int8:
    c: int8 = a
    c *= b
    return c
