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
#!           "caller": "0x71C4e2196293d40B4cAa7d606D3475Ed3a581dBF"
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
#!           "caller": "0xfeC79C5Eeb7670210BbD80ff8Faff5644f13876B"
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
