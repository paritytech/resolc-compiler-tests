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
#!             "100500",
#!             "16"
#!           ],
#!           "caller": "0x2f9B7DAfA24e47639c54501597e7629A27904e04"
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
