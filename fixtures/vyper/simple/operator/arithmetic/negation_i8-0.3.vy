#! {
#!   "modes": [
#!     "V <=0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "zero",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "0"
#!           ],
#!           "caller": "0xA5ABcEc42F98866CB4Da628A0915778eeBb6fa65"
#!         }
#!       ],
#!       "expected": [
#!         "0"
#!       ]
#!     },
#!     {
#!       "name": "ordinar_negative",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "-42"
#!           ],
#!           "caller": "0x98EdAFEc3dEa016591F7fbBB4782563cEdf0f0f3"
#!         }
#!       ],
#!       "expected": [
#!         "42"
#!       ]
#!     },
#!     {
#!       "name": "ordinar_positive",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "42"
#!           ],
#!           "caller": "0x2873102384aC3e545A80C240d54B081b88CA69E3"
#!         }
#!       ],
#!       "expected": [
#!         "-42"
#!       ]
#!     },
#!     {
#!       "name": "max_to_min",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "127"
#!           ],
#!           "caller": "0x4D12D14caB01e35e3311A740C962a7e0591192c9"
#!         }
#!       ],
#!       "expected": [
#!         "-127"
#!       ]
#!     },
#!     {
#!       "name": "almost_min_to_max",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "-127"
#!           ],
#!           "caller": "0xd8a5f5A201f7549afC36d4cd61A3Ded97d8E8a76"
#!         }
#!       ],
#!       "expected": [
#!         "127"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def main(a: int8) -> int8:
    return -a
