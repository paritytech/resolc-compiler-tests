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
#!             "999999",
#!             "16"
#!           ],
#!           "caller": "0x5FB63677DDA2e44F7fA62cCf3777d2DD90FcbE99"
#!         }
#!       ],
#!       "expected": [
#!         "64"
#!       ]
#!     }
#!   ]
#! }

data: HashMap[address, HashMap[address, uint256]]

@external
def main(key1: address, key2: address, _value: uint256) -> uint256:
    self.data[key1][key2] = _value * 4
    return self.data[key1][key2]
