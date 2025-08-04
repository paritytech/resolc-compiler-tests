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
#!             "1",
#!             "1"
#!           ],
#!           "caller": "0x1388A02868e77F6545785624f6C538d548F7ED17"
#!         },
#!         {
#!           "method": "get",
#!           "calldata": [
#!             "1",
#!             "1"
#!           ],
#!           "caller": "0x1388A02868e77F6545785624f6C538d548F7ED17"
#!         }
#!       ],
#!       "expected": [
#!         "1"
#!       ]
#!     },
#!     {
#!       "name": "second",
#!       "inputs": [
#!         {
#!           "method": "set",
#!           "calldata": [
#!             "0x127782389999AaAAbBbbCcccddDdeabcfFFfCcCc",
#!             "784563478547835256342389483254",
#!             "1"
#!           ],
#!           "caller": "0x02Ab86320f84737775e93028cBCFFBB8C495C7c1"
#!         },
#!         {
#!           "method": "remove",
#!           "calldata": [
#!             "0x127782389999AaAAbBbbCcccddDdeabcfFFfCcCc",
#!             "784563478547835256342389483254"
#!           ],
#!           "caller": "0x02Ab86320f84737775e93028cBCFFBB8C495C7c1"
#!         },
#!         {
#!           "method": "get",
#!           "calldata": [
#!             "0x127782389999AaAAbBbbCcccddDdeabcfFFfCcCc",
#!             "784563478547835256342389483254"
#!           ],
#!           "caller": "0x02Ab86320f84737775e93028cBCFFBB8C495C7c1"
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
#!             "453453453464564564564500",
#!             "1"
#!           ],
#!           "caller": "0x32f02397DfDBf5546B11997b01267c456b0081E3"
#!         },
#!         {
#!           "method": "set",
#!           "calldata": [
#!             "0x127782389999AaAAbBbbCcccddDdeabcfFFffa00",
#!             "453453453464564564564501",
#!             "1"
#!           ],
#!           "caller": "0x32f02397DfDBf5546B11997b01267c456b0081E3"
#!         },
#!         {
#!           "method": "remove",
#!           "calldata": [
#!             "0x127782389999AaAAbBbbCcccddDdeabcfFFffa00",
#!             "453453453464564564564500"
#!           ],
#!           "caller": "0x32f02397DfDBf5546B11997b01267c456b0081E3"
#!         },
#!         {
#!           "method": "get",
#!           "calldata": [
#!             "0x127782389999AaAAbBbbCcccddDdeabcfFFffa00",
#!             "453453453464564564564501"
#!           ],
#!           "caller": "0x32f02397DfDBf5546B11997b01267c456b0081E3"
#!         }
#!       ],
#!       "expected": [
#!         "1"
#!       ]
#!     }
#!   ]
#! }

# Nested mapping (mapping from address to another mapping)
nested: public(HashMap[address, HashMap[uint256, bool]])

@external
@view
def get(_addr1: address, _i: uint256) -> bool:
    # You can get values from a nested mapping
    # even when it is not initialized
    return self.nested[_addr1][_i]

@external
def set(_addr1: address, _i: uint256, _boo: bool):
    self.nested[_addr1][_i] = _boo

@external
def remove(_addr1: address, _i: uint256):
    self.nested[_addr1][_i] = empty(bool)
