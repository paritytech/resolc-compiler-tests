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
#!             "226156424291633194186662080095093570025917938800079226639565593765455331327"
#!           ],
#!           "caller": "0x4E4FD6FD598B9f88D8E9C0B9Bd0962e64093C6Ac"
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
    return witness + 1
