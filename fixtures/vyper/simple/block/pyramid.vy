#! {
#!   "modes": [
#!     "V >=0.4.0"
#!   ],
#!   "cases": [
#!     {
#!       "name": "main",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "4"
#!           ],
#!           "caller": "0xeA855c42E3716F2597A96D9fDcd95476761f6a92"
#!         }
#!       ],
#!       "expected": [
#!         "16"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def main(witness: uint8) -> uint8:
    return 1 + (
        2 + (
            3 + (
                witness
            ) + 3
        ) + 2
    ) + 1
