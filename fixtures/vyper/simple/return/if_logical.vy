#! {
#!   "modes": [
#!     "V >=0.4.0"
#!   ],
#!   "cases": [
#!     {
#!       "name": "entry1",
#!       "inputs": [
#!         {
#!           "method": "entry",
#!           "calldata": [
#!             "0",
#!             "0"
#!           ],
#!           "caller": "0xC00A3df0e4Ee3997A7D5932863DFCdD1D860dfDe"
#!         }
#!       ],
#!       "expected": [
#!         "4"
#!       ]
#!     },
#!     {
#!       "name": "false_true",
#!       "inputs": [
#!         {
#!           "method": "entry",
#!           "calldata": [
#!             "0",
#!             "1"
#!           ],
#!           "caller": "0x5d612B5eb11cdFEf581aba317aA695d153e2a96A"
#!         }
#!       ],
#!       "expected": [
#!         "8"
#!       ]
#!     },
#!     {
#!       "name": "true_false",
#!       "inputs": [
#!         {
#!           "method": "entry",
#!           "calldata": [
#!             "1",
#!             "0"
#!           ],
#!           "caller": "0x1824C73c9EcD7B32843F096E37e9310F80B9B29C"
#!         }
#!       ],
#!       "expected": [
#!         "8"
#!       ]
#!     },
#!     {
#!       "name": "true_true",
#!       "inputs": [
#!         {
#!           "method": "entry",
#!           "calldata": [
#!             "1",
#!             "1"
#!           ],
#!           "caller": "0x528aA08C6cBbC67dadc88343c2e22f47CC660dff"
#!         }
#!       ],
#!       "expected": [
#!         "4"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def entry(first: bool, second: bool) -> uint8:
    result: uint8 = 1

    if first or second:
        result *= 2

    if first != second:
        result *= 2

    if first and second:
        result *= 2

    if not first:
        result *= 2

    if not second:
        result *= 2

    return result
