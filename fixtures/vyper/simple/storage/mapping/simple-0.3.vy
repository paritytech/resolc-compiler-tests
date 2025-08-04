#! {
#!   "modes": [
#!     "V <=0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "main",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "100500",
#!             "16"
#!           ],
#!           "caller": "0xac970A7b4aeB217C2d0F6560fe29D1cEfc18cD25"
#!         }
#!       ],
#!       "expected": [
#!         "64"
#!       ]
#!     }
#!   ]
#! }

data: HashMap[uint256, uint256]

@external
def main(key: uint256, _value: uint256) -> uint256:
    self.data[key] = _value * 4
    return self.data[key]
