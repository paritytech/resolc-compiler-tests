#! {
#!   "modes": [
#!     "V 0.3.9",
#!     "V 0.3.10"
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
#!           "caller": "0x14FB9434D88f95DF397DD8323c65d4572103b7F2"
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
