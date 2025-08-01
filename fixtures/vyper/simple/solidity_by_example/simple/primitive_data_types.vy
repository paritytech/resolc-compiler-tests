#! {
#!   "modes": [
#!     "V >=0.4.0"
#!   ],
#!   "cases": [
#!     {
#!       "name": "boo",
#!       "inputs": [
#!         {
#!           "method": "boo",
#!           "calldata": [],
#!           "caller": "0x2398dF46B710b1b018E60676Eb141cd0752dc9dF"
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
#!           "caller": "0xE90b6034EeDf2606A89907664f66258A6D1f10c0"
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
#!           "caller": "0x5B667a465C59d8DBD6bcE518889febeAAc4A6622"
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
#!           "caller": "0x096DAabfad72358299b7EF2909cB687351C33B59"
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
#!           "caller": "0xFCDCA0EEe6DC83B47F8137B77A803A20Ec23a750"
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
#!           "caller": "0x28bFB4392bdbf44425fd4E07880B0986D7D90C1e"
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
#!           "caller": "0xcA2Fb2217A242C558064db93115EEB4368E34ef7"
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
#!           "caller": "0x1F0687b92E9F3EFCD00c9C074D4EfB24b12A0876"
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
#!           "caller": "0x9ccf60FA950212dFDa5e5635aA79899896e2A656"
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
#!           "caller": "0x1811Cf4a238889f547b0AEA8256F0384a2e832B3"
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
#!           "caller": "0xF9F4e4493a7a26810192C07A89fF2A716109d961"
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
#!           "caller": "0x4b8d44bdFFB6d6644783706Bbc1F283eE2e279Ff"
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

@deploy
def __init__():
    self.boo = True
    self.u8 = 1
    self.u256 = 456
    self.i128 = -1
    self.i256 = 456
    self.minInt128 = min_value(int128)
    self.maxInt128 = max_value(int128)
    self.addr = 0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c