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
#!           "calldata": [],
#!           "caller": "0x366E8E8e104508C00cbA194318AE5f96Bbe2293D"
#!         }
#!       ],
#!       "expected": [
#!         "0"
#!       ]
#!     }
#!   ]
#! }

# Report https://linear.app/matterlabs/issue/CPR-222/fix-failures-of-the-mapping-tests-from-the-solidity-repo

twodim: HashMap[uint256, HashMap[uint256, uint256]]

@external
def main() -> uint256:
    self.twodim[2][3] = 3
    return self.twodim[3][2]
