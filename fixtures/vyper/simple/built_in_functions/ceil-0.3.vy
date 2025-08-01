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
#!             "-3534534645645544566"
#!           ],
#!           "caller": "0xFEe3CEc0D416454206290830aD88bD500c4Fe3CC"
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
#!           "caller": "0x8a7A7bf025591cB98457849180e63Ff011BEF87b"
#!         }
#!       ],
#!       "expected": [
#!         "5647389344"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def main(a: int256) -> int256:
    return ceil(convert(a, decimal)/100000.0)
