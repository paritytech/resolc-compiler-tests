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
#!           "caller": "0x88F054314C1c9685B1E9A3ff5A71649924CAC23a"
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
