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
#!           "caller": "0xE99E709E541E476b97FE0573F6062160E2A48cC7"
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
#!           "caller": "0x562B2E3DF73427431616c020e53514227a55B378"
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
