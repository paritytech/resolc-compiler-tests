#! {
#!   "modes": [
#!     "V >=0.4.0"
#!   ],
#!   "cases": [
#!     {
#!       "name": "default",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "1212121242342345346456456",
#!             "234234234"
#!           ],
#!           "caller": "0xcE2e35d741af91B7608A7543a198164a56D37Dc1"
#!         }
#!       ],
#!       "expected": [
#!         "5174825309020991"
#!       ]
#!     },
#!     {
#!       "name": "by_zero",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "24234234534545674578687458968945",
#!             "0"
#!           ],
#!           "caller": "0x9BF9abE94752a06B35ab7e1939e2003Aa798e0DD"
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
def main(a: int256, b: int256) -> int256:
    return unsafe_div(a, b)
