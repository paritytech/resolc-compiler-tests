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
#!             "16"
#!           ],
#!           "caller": "0x105f1a5D4E02B90794f358c48d9d5B0237aA4408"
#!         }
#!       ],
#!       "expected": [
#!         "192"
#!       ]
#!     }
#!   ]
#! }

data: HashMap[uint8, HashMap[uint8, uint8]]

@external
def main(_value: uint8) -> uint8:
    self.data[5][10] = _value * 4
    self.data[15][20] = _value * 4
    self.data[25][30] = _value * 4
    return self.data[5][10] + self.data[15][20] + self.data[25][30]
