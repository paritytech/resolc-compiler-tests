#! {
#!   "modes": [
#!     "V <=0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "positive",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "456789765435678908765"
#!           ],
#!           "caller": "0x7B9B167C6e06941FFE133Fcb84C069b8AC678084"
#!         }
#!       ],
#!       "expected": [
#!         "456789765435678908765"
#!       ]
#!     },
#!     {
#!       "name": "negative",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "-3423453453453453454567897345346789345340584375465"
#!           ],
#!           "caller": "0x6106bE68f9AD6759aC10a6CbDfcBEF80AC891724"
#!         }
#!       ],
#!       "expected": [
#!         "3423453453453453454567897345346789345340584375465"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def main(a: int256) -> int256:
    return abs(a)
