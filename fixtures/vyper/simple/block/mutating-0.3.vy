#! {
#!   "modes": [
#!     "V <=0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "main",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "50"
#!           ],
#!           "caller": "0xB045eA9057a35a73BB10e58d85d3266961E49D75"
#!         }
#!       ],
#!       "expected": [
#!         "75"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def main(witness: uint8) -> uint8:
    inner: uint8 = 25
    inner += witness
    return inner
