#! {
#!   "modes": [
#!     "V <=0.3.10"
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
#!           "caller": "0xcb11ebCE33D04E77f81f41D9900fe1457C329edA"
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
#!           "caller": "0x690086D537801a4621B446Af947D2da44346DAe7"
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
