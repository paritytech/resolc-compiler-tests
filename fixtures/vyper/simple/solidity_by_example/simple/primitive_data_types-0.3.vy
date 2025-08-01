#! {
#!   "modes": [
#!     "V <=0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "boo",
#!       "inputs": [
#!         {
#!           "method": "boo",
#!           "calldata": [],
#!           "caller": "0xD1fE7f8A43e9C5C9e3163582259eb3AbD8269252"
#!         }
#!       ],
#!       "expected": [
#!         "1"
#!       ]
#!     },
#!     {
#!       "name": "u8",
#!       "inputs": [
#!         {
#!           "method": "u8",
#!           "calldata": [],
#!           "caller": "0x581fBD39e4e6D70E7dBFf34787ccEA912b2252Fa"
#!         }
#!       ],
#!       "expected": [
#!         "1"
#!       ]
#!     },
#!     {
#!       "name": "u256",
#!       "inputs": [
#!         {
#!           "method": "u256",
#!           "calldata": [],
#!           "caller": "0x35Ec15Ba97bF582Ee509DBfA800B503d21980862"
#!         }
#!       ],
#!       "expected": [
#!         "456"
#!       ]
#!     },
#!     {
#!       "name": "i128",
#!       "inputs": [
#!         {
#!           "method": "i128",
#!           "calldata": [],
#!           "caller": "0x5C02FF5cbDf7570532aAF34acdcd34449b7B2cc5"
#!         }
#!       ],
#!       "expected": [
#!         "-1"
#!       ]
#!     },
#!     {
#!       "name": "i256",
#!       "inputs": [
#!         {
#!           "method": "i256",
#!           "calldata": [],
#!           "caller": "0x6aeF9fD3ba083FB9FF58635c6ABd36850e814ED8"
#!         }
#!       ],
#!       "expected": [
#!         "456"
#!       ]
#!     },
#!     {
#!       "name": "minInt128",
#!       "inputs": [
#!         {
#!           "method": "minInt128",
#!           "calldata": [],
#!           "caller": "0x2684907b076d5869626EfDb003d477C5eb0dD3e9"
#!         }
#!       ],
#!       "expected": [
#!         "0xffffffffffffffffffffffffffffffff80000000000000000000000000000000"
#!       ]
#!     },
#!     {
#!       "name": "maxInt128",
#!       "inputs": [
#!         {
#!           "method": "maxInt128",
#!           "calldata": [],
#!           "caller": "0x4F1F3340B673ec4fF7614b605793c9695854973C"
#!         }
#!       ],
#!       "expected": [
#!         "0x7fffffffffffffffffffffffffffffff"
#!       ]
#!     },
#!     {
#!       "name": "addr",
#!       "inputs": [
#!         {
#!           "method": "addr",
#!           "calldata": [],
#!           "caller": "0xaae6bac4d2472602595eB48F8f32c8Cc79Da1967"
#!         }
#!       ],
#!       "expected": [
#!         "0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c"
#!       ]
#!     },
#!     {
#!       "name": "defaultBoo",
#!       "inputs": [
#!         {
#!           "method": "defaultBoo",
#!           "calldata": [],
#!           "caller": "0x67a8E9B37a00BF1358e6740cD991850d50E2efBb"
#!         }
#!       ],
#!       "expected": [
#!         "0"
#!       ]
#!     },
#!     {
#!       "name": "defaultUint",
#!       "inputs": [
#!         {
#!           "method": "defaultUint",
#!           "calldata": [],
#!           "caller": "0x803514F5143889A5ea32842B302fA0dc343FCaa6"
#!         }
#!       ],
#!       "expected": [
#!         "0"
#!       ]
#!     },
#!     {
#!       "name": "defaultInt",
#!       "inputs": [
#!         {
#!           "method": "defaultInt",
#!           "calldata": [],
#!           "caller": "0x1B5e63Ed8caFcb720b149be843F7e127B732C201"
#!         }
#!       ],
#!       "expected": [
#!         "0"
#!       ]
#!     },
#!     {
#!       "name": "defaultAddr",
#!       "inputs": [
#!         {
#!           "method": "defaultAddr",
#!           "calldata": [],
#!           "caller": "0xB835FE6cD0b70851540c585E0050e68c3AC650C7"
#!         }
#!       ],
#!       "expected": [
#!         "0"
#!       ]
#!     }
#!   ]
#! }

boo: public(bool)

# uint stands for unsigned integer, meaning non negative integers
# different sizes are available
#     uint8   ranges from 0 to 2 ** 8 - 1
#     uint256 ranges from 0 to 2 ** 256 - 1
u8: public(uint8)
u256: public(uint256)

# Negative numbers are allowed for int types.
# Like uint, different ranges are available int128 and int256
#
# int256 ranges from -2 ** 255 to 2 ** 255 - 1
# int128 ranges from -2 ** 127 to 2 ** 127 - 1
i128: public(int128)
i256: public(int256)

# minimum and maximum of int
minInt128: public(int128)
maxInt128: public(int128)

addr: public(address)

# Default values
# Unassigned variables have a default value
defaultBoo: public(bool) # false
defaultUint: public(uint256) # 0
defaultInt: public(int256) # 0
defaultAddr: public(address) # 0x0000000000000000000000000000000000000000

@external
def __init__():
    self.boo = True
    self.u8 = 1
    self.u256 = 456
    self.i128 = -1
    self.i256 = 456
    self.minInt128 = MIN_INT128
    self.maxInt128 = MAX_INT128
    self.addr = 0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c