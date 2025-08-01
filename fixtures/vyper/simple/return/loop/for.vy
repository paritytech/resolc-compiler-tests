#! {
#!   "modes": [
#!     "V >=0.4.0"
#!   ],
#!   "cases": [
#!     {
#!       "name": "entry0",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "0"
#!           ],
#!           "caller": "0x0fEDDb2686e75cACed03C1b2bb93d68c793B534B"
#!         }
#!       ],
#!       "expected": [
#!         "4"
#!       ]
#!     },
#!     {
#!       "name": "entry1",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "1"
#!           ],
#!           "caller": "0x46f5158982f8026184e4065c9BA4EEdd9d57e973"
#!         }
#!       ],
#!       "expected": [
#!         "5"
#!       ]
#!     },
#!     {
#!       "name": "entry2",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "2"
#!           ],
#!           "caller": "0x11192615a7454f4b5dbAfabB1f66CE0040fE444D"
#!         }
#!       ],
#!       "expected": [
#!         "6"
#!       ]
#!     },
#!     {
#!       "name": "entry3",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "3"
#!           ],
#!           "caller": "0x7AD2AD616FA528b36341b4941F70cB9E8feB257C"
#!         }
#!       ],
#!       "expected": [
#!         "7"
#!       ]
#!     },
#!     {
#!       "name": "entry4",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "7"
#!           ],
#!           "caller": "0x8f4018bdd4110FeFB049FAF66B0a6ad441DbA999"
#!         }
#!       ],
#!       "expected": [
#!         "99"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def main(param: uint8) -> uint256:
    for i: uint256 in range(0, 5):
        if param == 0 and i > 3:
            return i # 4
        for j: uint8 in range(5, 10):
            if param == 1:
                return convert(param * j, uint256) # 5
            for k: uint256 in range(0, 5):
                if param == 2 and k == 3:
                    return 6
        if param == 3:
            return convert(param * 2 + 1, uint256) # 7
    return 99
