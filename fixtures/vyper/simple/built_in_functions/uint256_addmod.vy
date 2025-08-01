#! {
#!   "modes": [
#!     "V >=0.4.0"
#!   ],
#!   "cases": [
#!     {
#!       "name": "first",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "121212",
#!             "234234234",
#!             "2017"
#!           ],
#!           "caller": "0x4Fcc9Ede34b9b4d2092C31DFBAe40B7A28cb934E"
#!         }
#!       ],
#!       "expected": [
#!         "216"
#!       ]
#!     },
#!     {
#!       "name": "second",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "24234234534545674578687458968945",
#!             "456456458689459684985689454545",
#!             "2323232323234345454554547"
#!           ],
#!           "caller": "0x4E400D2ca736D35f50f34114c7146E835eCceCf2"
#!         }
#!       ],
#!       "expected": [
#!         "488163137577249243526086"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def main(a: uint256, b: uint256, c: uint256) -> uint256:
    return uint256_addmod(a, b, c)
