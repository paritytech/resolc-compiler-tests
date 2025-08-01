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
#!           "caller": "0xbFBB0E96E7B7BCE8124a951E59BcfEa800a7f082"
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
#!           "caller": "0xA9A5Bf61990929430b149Bbc5916321A435CC66D"
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
