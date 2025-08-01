#! {
#!   "modes": [
#!     "V <=0.3.10"
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
#!           "caller": "0x1760bCd4B53cCAA02d83ECD3E4B70722F557A68D"
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
#!           "caller": "0x9ac986eF2683680c098EC2E9b4a1797C18E64931"
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
#!           "caller": "0xD65207beCa1E284c33B302692dD3b2041637921a"
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
#!           "caller": "0x3690530C24A8CD610fe82560Fd0102fAbF57C922"
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
#!           "caller": "0xB6e99fb3c29353227fb5Ae507D456424f26832bb"
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
    for i in range(0, 10):
        if param == 0 and i == 2:
            return i * 2 # 4
        for _ in range(1000000):
            if param == 1:
                return 5
            for j in [10, 8, 6, 4, 2]:
                if param == 2 and j == 4:
                    return convert(param + j, uint256) # 6
            break
        if param == 3 and i == 7:
            return i
    return 99
