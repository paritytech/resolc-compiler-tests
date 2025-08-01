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
#!           "caller": "0x59218E0733b742B53cBb145D62B295778797110f"
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
#!           "caller": "0xfb9780D72f71ecBbC1663e58705b17a5D767Bd69"
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
#!           "caller": "0x42071629141E7ed978F0F2ae3475f1ab3B41be48"
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
#!           "caller": "0x39b67eb59DB8B1999EF4586f267aA60ed3009E3d"
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
#!           "caller": "0x27E20AFA723092CfFC113fd325AF6C389d2B619B"
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
    if param < 3:
        if param < 2:
            if param == 0:
                return 4
            else:
                return convert(5 * param, uint256) # 5
        return convert(param * 3, uint256) # 6
    else:
        if param == 3:
            return convert(param * 2 + 1, uint256) # 7
        return 99
