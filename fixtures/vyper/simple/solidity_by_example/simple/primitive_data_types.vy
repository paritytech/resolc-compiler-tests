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
#!           "caller": "0xC887508DF0371Fa657A4ec0046Fe8ff5B1aC25dB"
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
#!           "caller": "0x954ec3b80775C208125f64fdC7019b5495cF22F6"
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
#!           "caller": "0x7f7f7E299997e5bBbC31F393313411cc328e4E74"
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
#!           "caller": "0xa7C0B05ca97CCc4fF3d9Da3099850361c0534C6D"
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
#!           "caller": "0xbe708826D91ffEB698349c9C6D9061A8Ef1755C4"
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
#!           "caller": "0x1e2b2E967B042bfD4433277b1F29b777d70A065e"
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
#!           "caller": "0x8f636E987934d8973D3826552d86c2eF060a9594"
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
#!           "caller": "0xD42825d4Ac6e610A4A7D097331Ed75E02a416807"
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
#!           "caller": "0xF8405D6dE12dff29A592AE9a20440FdD6e4E17d1"
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
#!           "caller": "0x44142AbD16385e9DC26F4A351152a817000cB79c"
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
#!           "caller": "0xB65Fc0d47a00bB6984738d7c8463F7555E088782"
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
#!           "caller": "0xf206BEd6f1c81Aac513faFF076A7A59523b91EeC"
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