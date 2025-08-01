#! {
#!   "modes": [
#!     "V >=0.4.0"
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
#!           "caller": "0xCf7B6ACfa3d62BE33F36e152366e2e83EFfdF072"
#!         }
#!       ],
#!       "expected": [
#!         "0"
#!       ]
#!     },
#!     {
#!       "name": "ordinar_true_lesser",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "25",
#!             "42"
#!           ],
#!           "caller": "0x2856496B481786e9C14765d29253e6ea0Ff949e8"
#!         }
#!       ],
#!       "expected": [
#!         "1"
#!       ]
#!     },
#!     {
#!       "name": "ordinar_true_bigger",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "42",
#!             "25"
#!           ],
#!           "caller": "0xA495564FCdE04F26729d33cc0C1bbD718675147d"
#!         }
#!       ],
#!       "expected": [
#!         "1"
#!       ]
#!     },
#!     {
#!       "name": "ordinar_false",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "42",
#!             "42"
#!           ],
#!           "caller": "0xA764777b348bB4ad2304697ca29D9559c158Fd49"
#!         }
#!       ],
#!       "expected": [
#!         "0"
#!       ]
#!     },
#!     {
#!       "name": "max_max",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "255",
#!             "255"
#!           ],
#!           "caller": "0xbf10143FD69b803d119A5F65cf07C6a91e24a06d"
#!         }
#!       ],
#!       "expected": [
#!         "0"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def main(a: uint8, b: uint8) -> bool:
    return a != b
