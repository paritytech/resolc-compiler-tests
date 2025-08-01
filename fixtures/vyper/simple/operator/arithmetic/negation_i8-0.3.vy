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
#!           "caller": "0x2a841025e078a3B663c5A0d4b6540A2C413AF5aA"
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
#!           "caller": "0x69076630F67773F1b02b95D806b8C78eac00C753"
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
#!           "caller": "0x4d298313cc9cb821D18e65D7Ba954621F20B12ff"
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
#!           "caller": "0x795D33b5a24731bd72E7CB25AF3dEa21a7A52c3c"
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
#!           "caller": "0x62A92fc95708A887CD71b07266c14dB83c0Fc88d"
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
