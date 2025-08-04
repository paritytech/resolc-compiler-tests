#! {
#!   "modes": [
#!     "V <=0.3.10"
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
#!           "caller": "0x46CCaDDCa1b69518B5b737623E0c05c29dd4cF69"
#!         },
#!         {
#!           "method": "get",
#!           "calldata": [
#!             "1"
#!           ],
#!           "caller": "0x46CCaDDCa1b69518B5b737623E0c05c29dd4cF69"
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
#!           "caller": "0x780ec51eda40188bba9Cc19fB92175523E6D3124"
#!         },
#!         {
#!           "method": "remove",
#!           "calldata": [
#!             "0x127782389999AaAAbBbbCcccddDdeabcfFFfCcCc"
#!           ],
#!           "caller": "0x780ec51eda40188bba9Cc19fB92175523E6D3124"
#!         },
#!         {
#!           "method": "get",
#!           "calldata": [
#!             "0x127782389999AaAAbBbbCcccddDdeabcfFFfCcCc"
#!           ],
#!           "caller": "0x780ec51eda40188bba9Cc19fB92175523E6D3124"
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
#!           "caller": "0xc184aF0822323d1B99d2C2627A20d84b77DA7545"
#!         },
#!         {
#!           "method": "set",
#!           "calldata": [
#!             "0x127782389999AaAAbBbbCcccddDdeabcfFFffa01",
#!             "123456"
#!           ],
#!           "caller": "0xc184aF0822323d1B99d2C2627A20d84b77DA7545"
#!         },
#!         {
#!           "method": "remove",
#!           "calldata": [
#!             "0x127782389999AaAAbBbbCcccddDdeabcfFFffa00"
#!           ],
#!           "caller": "0xc184aF0822323d1B99d2C2627A20d84b77DA7545"
#!         },
#!         {
#!           "method": "get",
#!           "calldata": [
#!             "0x127782389999AaAAbBbbCcccddDdeabcfFFffa01"
#!           ],
#!           "caller": "0xc184aF0822323d1B99d2C2627A20d84b77DA7545"
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
