#! {
#!   "modes": [
#!     "V >=0.4.0"
#!   ],
#!   "cases": [
#!     {
#!       "name": "one",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "5"
#!           ],
#!           "caller": "0x7d61EAa96cD03C8687fff286c714A6073e486D7e"
#!         }
#!       ],
#!       "expected": [
#!         "120"
#!       ]
#!     },
#!     {
#!       "name": "two",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "6"
#!           ],
#!           "caller": "0x468b202De01e3b32eA835Ad3b82342F601066b7f"
#!         }
#!       ],
#!       "expected": [
#!         "720"
#!       ]
#!     },
#!     {
#!       "name": "three",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "7"
#!           ],
#!           "caller": "0xb997B7329257371D9AdE44Dee3E54159d2D607D0"
#!         }
#!       ],
#!       "expected": [
#!         "5040"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def main(n: uint8) -> uint256:
    fact: uint256 = 1
    for i: uint8 in range(1, 100):
        if not i <= n:
            break
        fact *= convert(i, uint256)
    return fact
