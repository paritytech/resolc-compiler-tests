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
#!             "-226156424291633194186662080095093570025917938800079226639565593765455331328"
#!           ],
#!           "caller": "0xCFb6210371cF58c4a3B545a049cBb64E8061B805"
#!         }
#!       ],
#!       "expected": {
#!         "return_data": [],
#!         "exception": true
#!       }
#!     }
#!   ]
#! }

@external
@pure
def main(witness: int248) -> int248:
    return witness - 1
