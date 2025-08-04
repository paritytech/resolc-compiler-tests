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
#!             "452312848583266388373324160190187140051835877600158453279131187530910662655"
#!           ],
#!           "caller": "0x50beCB5Cea41bFc2830f6129972c5C632763D56B"
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
def main(witness: uint248) -> uint248:
    return witness + 1
