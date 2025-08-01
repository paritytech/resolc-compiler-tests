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
#!           "caller": "0x6568fA9DC5539CFCe197c922E3D72c093F0c0a71"
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
#!           "caller": "0x632188ED721E775210c741539160CEC87E23663b"
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
#!           "caller": "0x5671B0fA8A95262797aB367A70f5Abc853dFC4D6"
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
#!           "caller": "0x7A8Ba8133916d43Ebd8a28E4d43bfe9C32D2633B"
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
