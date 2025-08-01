#! {
#!   "modes": [
#!     "V >=0.4.0"
#!   ],
#!   "cases": [
#!     {
#!       "name": "false_false",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "0",
#!             "0"
#!           ],
#!           "caller": "0x4DD4AAbfE7f1478b6525471619dBF8D60E1bc73b"
#!         }
#!       ],
#!       "expected": [
#!         "0"
#!       ]
#!     },
#!     {
#!       "name": "false_true",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "0",
#!             "1"
#!           ],
#!           "caller": "0x4838D5C4a46EF2b9E4686d3a1Af0A7a35741E249"
#!         }
#!       ],
#!       "expected": [
#!         "0"
#!       ]
#!     },
#!     {
#!       "name": "true_false",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "1",
#!             "0"
#!           ],
#!           "caller": "0xE2e098B49Cf1F4cd0A5e67289839A37e7F911144"
#!         }
#!       ],
#!       "expected": [
#!         "0"
#!       ]
#!     },
#!     {
#!       "name": "true_true",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "1",
#!             "1"
#!           ],
#!           "caller": "0x848e94293EEaE932589b4197f38AED498Ba0A532"
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
def main(a: bool, b: bool) -> bool:
    return a and b
