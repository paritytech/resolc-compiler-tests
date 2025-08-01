#! {
#!   "modes": [
#!     "V >=0.4.0,<=0.4.1"
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
#!           "caller": "0x205F80409a73980CA851cA2660Db06Af9B0bb01b"
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
#!           "caller": "0x01A962a528383fAa5e70bEa1fD32A3514a287403"
#!         }
#!       ],
#!       "expected": [
#!         "751491146653"
#!       ]
#!     }
#!   ]
#! }

# pragma enable-decimals

@external
@pure
def main(a: int256) -> int256:
    return floor(sqrt(convert(a, decimal))*100000.0)
