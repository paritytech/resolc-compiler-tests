#! {
#!   "modes": [
#!     "V <=0.3.10"
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
#!           "caller": "0x0b671Cb77dcced84E02699E42a4E216b476d9bd0"
#!         }
#!       ],
#!       "expected": [
#!         "574"
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
#!           "caller": "0x5411DE72d5F2a6c7c33a95f5a4160392150753D5"
#!         }
#!       ],
#!       "expected": [
#!         "315307268954157620099789"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def main(a: uint256, b: uint256, c: uint256) -> uint256:
    return uint256_mulmod(a, b, c)
