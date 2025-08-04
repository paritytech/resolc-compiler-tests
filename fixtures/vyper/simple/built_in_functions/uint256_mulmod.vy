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
#!           "caller": "0x1131F67460C72a15dC1EA291B1E107a97F2A9545"
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
#!           "caller": "0x919869AbE3c63300a3673e1748fc2F62b738f9A9"
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
