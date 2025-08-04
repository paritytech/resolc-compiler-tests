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
#!           "caller": "0xc4F348a7650dd16FAF8578c8C4A9132cbd3717Fb"
#!         },
#!         {
#!           "method": "get",
#!           "calldata": [
#!             "1"
#!           ],
#!           "caller": "0xc4F348a7650dd16FAF8578c8C4A9132cbd3717Fb"
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
#!           "caller": "0x076DE58605BB8953369780d7d37d92E956271BEC"
#!         },
#!         {
#!           "method": "remove",
#!           "calldata": [
#!             "0x127782389999AaAAbBbbCcccddDdeabcfFFfCcCc"
#!           ],
#!           "caller": "0x076DE58605BB8953369780d7d37d92E956271BEC"
#!         },
#!         {
#!           "method": "get",
#!           "calldata": [
#!             "0x127782389999AaAAbBbbCcccddDdeabcfFFfCcCc"
#!           ],
#!           "caller": "0x076DE58605BB8953369780d7d37d92E956271BEC"
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
#!           "caller": "0x081200B81816DD751854879FFD7ABaEA144C7016"
#!         },
#!         {
#!           "method": "set",
#!           "calldata": [
#!             "0x127782389999AaAAbBbbCcccddDdeabcfFFffa01",
#!             "123456"
#!           ],
#!           "caller": "0x081200B81816DD751854879FFD7ABaEA144C7016"
#!         },
#!         {
#!           "method": "remove",
#!           "calldata": [
#!             "0x127782389999AaAAbBbbCcccddDdeabcfFFffa00"
#!           ],
#!           "caller": "0x081200B81816DD751854879FFD7ABaEA144C7016"
#!         },
#!         {
#!           "method": "get",
#!           "calldata": [
#!             "0x127782389999AaAAbBbbCcccddDdeabcfFFffa01"
#!           ],
#!           "caller": "0x081200B81816DD751854879FFD7ABaEA144C7016"
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
