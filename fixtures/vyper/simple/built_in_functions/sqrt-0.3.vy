#! {
#!   "modes": [
#!     "V <=0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "first",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "2"
#!           ],
#!           "caller": "0x1182471Fe4F6997a2ddd390f06407A73582fe864"
#!         }
#!       ],
#!       "expected": [
#!         "141421"
#!       ]
#!     },
#!     {
#!       "name": "second",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "56473894349834"
#!           ],
#!           "caller": "0x9f643F2BD8Ed9790b6ceb4793FD7590739ea5B68"
#!         }
#!       ],
#!       "expected": [
#!         "751491146653"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def main(a: int256) -> int256:
    return floor(sqrt(convert(a, decimal))*100000.0)
