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
#!           "caller": "0x0F0ae2Aa973187f3621daB094d6159E6582Bc21A"
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
#!           "caller": "0x42CC0b90bD61806dd074D7038befD5D1b4A9D9dA"
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
#!           "caller": "0x445aDe69A243759fE4b7215Ddd95aEdB9E2845Bb"
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
#!           "caller": "0x163C6126f10d7D30b6fC70E53649B06393742d0f"
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
#!           "caller": "0xb2081fE9BdfD22f5925BF2F36CB7A952624AC36a"
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
