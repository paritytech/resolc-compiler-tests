#! {
#!   "modes": [
#!     "V <=0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "one",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "1",
#!             "0",
#!             "0"
#!           ],
#!           "caller": "0x573F90163Ebb551b5351ec35ae1AAd993Feca0ED"
#!         }
#!       ],
#!       "expected": [
#!         "1"
#!       ]
#!     },
#!     {
#!       "name": "two",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "0",
#!             "1",
#!             "1"
#!           ],
#!           "caller": "0x193031016535D4785d9156f88CdE2368C597e896"
#!         }
#!       ],
#!       "expected": [
#!         "2"
#!       ]
#!     },
#!     {
#!       "name": "three",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "0",
#!             "1",
#!             "0"
#!           ],
#!           "caller": "0x5ED20DC295B18091BcDB859a1511611f9C1Ef647"
#!         }
#!       ],
#!       "expected": [
#!         "3"
#!       ]
#!     },
#!     {
#!       "name": "four",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "0",
#!             "0",
#!             "0"
#!           ],
#!           "caller": "0x576394EC5Ff027C4485Df569535FfD09474485De"
#!         }
#!       ],
#!       "expected": [
#!         "4"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def main(gates: bool[3]) -> uint8:
    if gates[0]:
        return 1
    elif gates[1]:
        if gates[2]:
            return 2
        else:
            return 3
    else:
        return 4
