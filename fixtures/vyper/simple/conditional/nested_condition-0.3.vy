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
#!             "1"
#!           ],
#!           "caller": "0x864271b880D976918AA7Cc8ebCA6a6bB717cCF06"
#!         }
#!       ],
#!       "expected": [
#!         "25"
#!       ]
#!     },
#!     {
#!       "name": "second",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "2"
#!           ],
#!           "caller": "0x3497571d37FE1f16CC613A0E8d38A5536bC11d66"
#!         }
#!       ],
#!       "expected": [
#!         "42"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def main(witness: uint8) -> uint8:
    tmp: uint8 = 0

    if witness == 1:
        tmp = 2
    else:
        tmp = 3

    if tmp == 2:
        return 25
    else:
        return 42
