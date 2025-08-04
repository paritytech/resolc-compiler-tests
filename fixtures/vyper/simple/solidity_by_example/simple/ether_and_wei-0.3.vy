#! {
#!   "modes": [
#!     "V <=0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "oneWei",
#!       "inputs": [
#!         {
#!           "method": "oneWei",
#!           "calldata": [],
#!           "caller": "0x996cA8C8Df62353b831DE9F9d04F6B5971bFAece"
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
#!           "caller": "0x89b3E4c05bdd0609e03501e41743c13f44AD738A"
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
#!           "caller": "0xADEB036536f50bad266f8F30856A38eeA0dc4436"
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
#!           "caller": "0xCF4fc9be03E9c8B40A670B9ce9e3133d5751075D"
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

@external
def __init__():
    self.oneWei = as_wei_value(1, "wei")
    self.isOneWei = as_wei_value(1, "wei") == 1
    self.oneEther = as_wei_value(1, "ether")
    self.isOneEther = as_wei_value(1, "ether") == convert(1e18, uint256)
