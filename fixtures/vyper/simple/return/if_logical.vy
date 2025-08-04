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
#!           "caller": "0xDF17B6dB95da2687A56015b4E4962681BB106dd7"
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
#!           "caller": "0x00846CD9b924B122c9C16Acd5B300370E0050C64"
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
#!           "caller": "0x9083cF92e3D8b20Cc53F52Cd82076717f52dFd27"
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
#!           "caller": "0x7Ae18C598786B026f237a27ef6ff80e5c11Fcdf2"
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
