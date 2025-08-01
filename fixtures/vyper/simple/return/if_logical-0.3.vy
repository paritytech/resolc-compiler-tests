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
#!           "caller": "0x83adC5E861502e01457E06913d75AC83B96F6F0D"
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
#!           "caller": "0x20c660343c0f81D910f19FB42C67fe0441070E75"
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
#!           "caller": "0xF010215299D5358F3d1A6F61ec80C875477d5C58"
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
#!           "caller": "0x9a768Db7a93DC96Ad01e5fAe7471Ca5ba64eC6fD"
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
