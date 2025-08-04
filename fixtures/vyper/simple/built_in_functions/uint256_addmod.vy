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
#!           "caller": "0x85ea34007717c4891A8Cb386D9c6a75b5D663d1b"
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
#!           "caller": "0x07B27091F78B01DfDC49b23F5fb39af89cf8B036"
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
