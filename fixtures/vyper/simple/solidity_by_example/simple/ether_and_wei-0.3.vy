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
#!           "caller": "0x5C3DEaE203601cfC89c8413E2c074D339536d5b0"
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
#!           "caller": "0x2CcFe2b4db44134A51796020641341Ee84211584"
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
#!           "caller": "0x438F7D532C678075399920b4198F40DC97f36341"
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
#!           "caller": "0xaF67d036E8E56af28af0F4e9808059C811990b40"
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
