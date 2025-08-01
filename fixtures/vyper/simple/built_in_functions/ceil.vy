#! {
#!   "modes": [
#!     "V >=0.4.0"
#!   ],
#!   "cases": [
#!     {
#!       "name": "first",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "-3534534645645544566"
#!           ],
#!           "caller": "0xF3F7522402813202082D04c4627Af5200C75126f"
#!         }
#!       ],
#!       "expected": [
#!         "-35345346456455"
#!       ]
#!     },
#!     {
#!       "name": "second",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "564738934349834"
#!           ],
#!           "caller": "0xc10DA633B0C315d6e64C9d420dA12D1a07eDE492"
#!         }
#!       ],
#!       "expected": [
#!         "5647389344"
#!       ]
#!     }
#!   ]
#! }

# pragma enable-decimals
@external
@pure
def main(a: int256) -> int256:
    return ceil(convert(a, decimal)/100000.0)
