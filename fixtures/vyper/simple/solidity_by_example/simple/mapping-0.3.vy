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
#!           "caller": "0x6f382DB5c136632117f5bbABaccA574dB0bE2ef2"
#!         },
#!         {
#!           "method": "get",
#!           "calldata": [
#!             "1"
#!           ],
#!           "caller": "0x6f382DB5c136632117f5bbABaccA574dB0bE2ef2"
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
#!           "caller": "0xa3B291AFc87AC8D07946db71c1004bf8d70294F7"
#!         },
#!         {
#!           "method": "remove",
#!           "calldata": [
#!             "0x127782389999AaAAbBbbCcccddDdeabcfFFfCcCc"
#!           ],
#!           "caller": "0xa3B291AFc87AC8D07946db71c1004bf8d70294F7"
#!         },
#!         {
#!           "method": "get",
#!           "calldata": [
#!             "0x127782389999AaAAbBbbCcccddDdeabcfFFfCcCc"
#!           ],
#!           "caller": "0xa3B291AFc87AC8D07946db71c1004bf8d70294F7"
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
#!           "caller": "0x3b893b1Dd282bBf68620909Fd141cf52dbb4ecCA"
#!         },
#!         {
#!           "method": "set",
#!           "calldata": [
#!             "0x127782389999AaAAbBbbCcccddDdeabcfFFffa01",
#!             "123456"
#!           ],
#!           "caller": "0x3b893b1Dd282bBf68620909Fd141cf52dbb4ecCA"
#!         },
#!         {
#!           "method": "remove",
#!           "calldata": [
#!             "0x127782389999AaAAbBbbCcccddDdeabcfFFffa00"
#!           ],
#!           "caller": "0x3b893b1Dd282bBf68620909Fd141cf52dbb4ecCA"
#!         },
#!         {
#!           "method": "get",
#!           "calldata": [
#!             "0x127782389999AaAAbBbbCcccddDdeabcfFFffa01"
#!           ],
#!           "caller": "0x3b893b1Dd282bBf68620909Fd141cf52dbb4ecCA"
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
