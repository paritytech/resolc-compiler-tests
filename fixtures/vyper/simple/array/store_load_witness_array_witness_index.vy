#! {
#!   "modes": [
#!     "V >=0.4.0"
#!   ],
#!   "cases": [
#!     {
#!       "name": "element1",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "1",
#!             "2",
#!             "3",
#!             "4",
#!             "0"
#!           ],
#!           "caller": "0x1A9aeF75FAeA8f74189e00801602D708388C6eD3"
#!         }
#!       ],
#!       "expected": [
#!         "1"
#!       ]
#!     },
#!     {
#!       "name": "element2",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "1",
#!             "2",
#!             "3",
#!             "4",
#!             "1"
#!           ],
#!           "caller": "0x292c36A277384F0149f34E1716de64d2a80f8692"
#!         }
#!       ],
#!       "expected": [
#!         "2"
#!       ]
#!     },
#!     {
#!       "name": "element3",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "1",
#!             "2",
#!             "3",
#!             "4",
#!             "2"
#!           ],
#!           "caller": "0x7D7012DA1E55Ff40e79e6a1E99A3cc82d3b17f7C"
#!         }
#!       ],
#!       "expected": [
#!         "3"
#!       ]
#!     },
#!     {
#!       "name": "element4",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "1",
#!             "2",
#!             "3",
#!             "4",
#!             "3"
#!           ],
#!           "caller": "0x8058bf2c36462a52Aa98c5483Dcf1Fd1536593e2"
#!         }
#!       ],
#!       "expected": [
#!         "4"
#!       ]
#!     }
#!   ]
#! }

SIZE: constant(uint8) = 4

@external
@pure
def main(array: uint8[SIZE], index: uint8) -> uint8:
    return array[index]
