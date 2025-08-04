#! {
#!   "modes": [
#!     "V >=0.4.0"
#!   ],
#!   "cases": [
#!     {
#!       "name": "oneWei",
#!       "inputs": [
#!         {
#!           "method": "oneWei",
#!           "calldata": [],
#!           "caller": "0x9B1137b1e57AaE2897E042f7f6fEFE1D609C451A"
#!         }
#!       ],
#!       "expected": [
#!         "1"
#!       ]
#!     },
#!     {
#!       "name": "isOneWei",
#!       "inputs": [
#!         {
#!           "method": "isOneWei",
#!           "calldata": [],
#!           "caller": "0x95f34E4B44A515A15a612157DF20AFa1F1C121E3"
#!         }
#!       ],
#!       "expected": [
#!         "1"
#!       ]
#!     },
#!     {
#!       "name": "oneEther",
#!       "inputs": [
#!         {
#!           "method": "oneEther",
#!           "calldata": [],
#!           "caller": "0x5ad5Ff41c3794F79072D929BB59cc1944751665b"
#!         }
#!       ],
#!       "expected": [
#!         "1000000000000000000"
#!       ]
#!     },
#!     {
#!       "name": "isOneEther",
#!       "inputs": [
#!         {
#!           "method": "isOneEther",
#!           "calldata": [],
#!           "caller": "0x2e2F41Bf491eA1f57C69CC5df764cf52Bf8F8E90"
#!         }
#!       ],
#!       "expected": [
#!         "1"
#!       ]
#!     }
#!   ]
#! }

oneWei: public(uint256)
# 1 wei is equal to 1
isOneWei: public(bool)

oneEther: public(uint256)
# 1 ether is equal to 10^18 wei
isOneEther: public(bool)

@deploy
def __init__():
    self.oneWei = as_wei_value(1, "wei")
    self.isOneWei = as_wei_value(1, "wei") == 1
    self.oneEther = as_wei_value(1, "ether")
    self.isOneEther = as_wei_value(1, "ether") == convert(1e18, uint256)
