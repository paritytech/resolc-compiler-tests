#! {
#!   "modes": [
#!     "V <=0.3.10"
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
#!           "caller": "0xde27d7809187Fdb2cf5aC2D5BDFC37f5eF056dc1"
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
#!           "caller": "0x01Ff0C8158D429425A043A5016E8caE7f49997d7"
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
#!           "caller": "0xC963Cb3Af5B5f717A9Da9aB0bC8Ad521de08854d"
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
#!           "caller": "0x5b436Dc1911fe54a8Fbb3e6E9f890D1eC6178c1b"
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
