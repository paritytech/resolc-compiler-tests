#! {
#!   "modes": [
#!     "V >=0.4.0"
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
#!           "caller": "0x3B1724BFb4F997a815F4dc48096ED9F5242d3E73"
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
#!           "caller": "0x4F98Ddf0838F16919FE08e95539Af5c47E0CC29e"
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
