#! {
#!   "modes": [
#!     "V <=0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "entry",
#!       "inputs": [
#!         {
#!           "method": "entry",
#!           "calldata": [],
#!           "caller": "0xc64764c260B6010a3bf8BFFbB0670A55BF824e9A"
#!         }
#!       ],
#!       "expected": [
#!         "3"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def entry() -> uint256:
    end: bool = True

    sum: uint256 = 0
    for i in range(1, 3):
        sum += i

        if not end:
            break

    return sum
