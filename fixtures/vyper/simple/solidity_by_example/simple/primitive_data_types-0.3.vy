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
#!           "caller": "0xacC0B189896cfA7618554C18ED31f3fCeF1B8e6D"
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
#!           "caller": "0xd81445D0E57B90e66bE7fd65e3184a8A6f7Bb9b3"
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
#!           "caller": "0x93E31EB000EdD8B4d1d750485aa6110D07D916f0"
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
#!           "caller": "0xAD5345A76833151a72c967926C9a26751bd8E52b"
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
#!           "caller": "0xA5b1bC8069c51CcF91b04352D3e1eEAc34898c3B"
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
#!           "caller": "0xD873bD614eAd39fb2F32f8a433629a53ecd155b8"
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
#!           "caller": "0x7D5ca13A118A4b35fe6b31C277e6CB48cFF01d49"
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
#!           "caller": "0xe1776621b5E082830F765466104F2688cBC30559"
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
#!           "caller": "0xEb3BE6C07F69880189e1147d0325cab3a7515159"
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
#!           "caller": "0xdeb2aeD2295b5959a3d88D937727f2af874cE293"
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
#!           "caller": "0xA1D14862c0902EBF6Ba58Bb084f3E0a3FDf78Fe7"
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
#!           "caller": "0x88e86c20dE07bc0b97AC645C6b7E9920C8130572"
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