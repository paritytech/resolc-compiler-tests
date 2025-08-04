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
#!           "caller": "0x18cbD62181384bD97ea0aB05B246Ebe70FDD1a1a"
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
