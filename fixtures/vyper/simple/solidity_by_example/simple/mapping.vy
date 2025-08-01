#! {
#!   "modes": [
#!     "V >=0.4.0"
#!   ],
#!   "cases": [
#!     {
#!       "name": "first",
#!       "inputs": [
#!         {
#!           "method": "set",
#!           "calldata": [
#!             "1",
#!             "10"
#!           ],
#!           "caller": "0x4849637084FADF1410f0324e86dd120Cd247d818"
#!         },
#!         {
#!           "method": "get",
#!           "calldata": [
#!             "1"
#!           ],
#!           "caller": "0x4849637084FADF1410f0324e86dd120Cd247d818"
#!         }
#!       ],
#!       "expected": [
#!         "10"
#!       ]
#!     },
#!     {
#!       "name": "second",
#!       "inputs": [
#!         {
#!           "method": "set",
#!           "calldata": [
#!             "0x127782389999AaAAbBbbCcccddDdeabcfFFfCcCc",
#!             "1234"
#!           ],
#!           "caller": "0x8995a6c74B804fc14913a88F36351AF81Fdd3e6B"
#!         },
#!         {
#!           "method": "remove",
#!           "calldata": [
#!             "0x127782389999AaAAbBbbCcccddDdeabcfFFfCcCc"
#!           ],
#!           "caller": "0x8995a6c74B804fc14913a88F36351AF81Fdd3e6B"
#!         },
#!         {
#!           "method": "get",
#!           "calldata": [
#!             "0x127782389999AaAAbBbbCcccddDdeabcfFFfCcCc"
#!           ],
#!           "caller": "0x8995a6c74B804fc14913a88F36351AF81Fdd3e6B"
#!         }
#!       ],
#!       "expected": [
#!         "0"
#!       ]
#!     },
#!     {
#!       "name": "third",
#!       "inputs": [
#!         {
#!           "method": "set",
#!           "calldata": [
#!             "0x127782389999AaAAbBbbCcccddDdeabcfFFffa00",
#!             "12345"
#!           ],
#!           "caller": "0xd8311FeBF8e5444849F1468B407eaCA495e66897"
#!         },
#!         {
#!           "method": "set",
#!           "calldata": [
#!             "0x127782389999AaAAbBbbCcccddDdeabcfFFffa01",
#!             "123456"
#!           ],
#!           "caller": "0xd8311FeBF8e5444849F1468B407eaCA495e66897"
#!         },
#!         {
#!           "method": "remove",
#!           "calldata": [
#!             "0x127782389999AaAAbBbbCcccddDdeabcfFFffa00"
#!           ],
#!           "caller": "0xd8311FeBF8e5444849F1468B407eaCA495e66897"
#!         },
#!         {
#!           "method": "get",
#!           "calldata": [
#!             "0x127782389999AaAAbBbbCcccddDdeabcfFFffa01"
#!           ],
#!           "caller": "0xd8311FeBF8e5444849F1468B407eaCA495e66897"
#!         }
#!       ],
#!       "expected": [
#!         "123456"
#!       ]
#!     }
#!   ]
#! }

# Mapping from address to uint
myMap: public(HashMap[address, uint256])

@external
@view
def get(_addr: address) -> uint256:
    # Mapping always returns a value.
    # If the value was never set, it will return the default value.
    return self.myMap[_addr]

@external
def set(_addr: address, _i: uint256):
    self.myMap[_addr] = _i

@external
def remove(_addr: address):
    # Reset the value to the default value.
    self.myMap[_addr] = empty(uint256)
