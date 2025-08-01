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
#!           "caller": "0x432a949d78616a30c926028D42460B7d9c0C8695"
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
