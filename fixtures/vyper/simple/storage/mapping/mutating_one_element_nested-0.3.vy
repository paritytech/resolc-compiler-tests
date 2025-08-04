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
#!           "calldata": [],
#!           "caller": "0xAB5823bEdAe08699e9A37fF70FbD87dcDbe5534e"
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
