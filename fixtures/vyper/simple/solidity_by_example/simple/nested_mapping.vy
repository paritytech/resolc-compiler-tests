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
#!           "caller": "0x4db1d0B11D66D3755E868d71ecE63dB361f6E3a4"
#!         },
#!         {
#!           "method": "get",
#!           "calldata": [
#!             "1",
#!             "1"
#!           ],
#!           "caller": "0x4db1d0B11D66D3755E868d71ecE63dB361f6E3a4"
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
#!           "caller": "0x8937f28b09F725e502c58253dbC2E6853a6E3962"
#!         },
#!         {
#!           "method": "remove",
#!           "calldata": [
#!             "0x127782389999AaAAbBbbCcccddDdeabcfFFfCcCc",
#!             "784563478547835256342389483254"
#!           ],
#!           "caller": "0x8937f28b09F725e502c58253dbC2E6853a6E3962"
#!         },
#!         {
#!           "method": "get",
#!           "calldata": [
#!             "0x127782389999AaAAbBbbCcccddDdeabcfFFfCcCc",
#!             "784563478547835256342389483254"
#!           ],
#!           "caller": "0x8937f28b09F725e502c58253dbC2E6853a6E3962"
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
#!           "caller": "0x7c64A88ff3dCe48F9D3671991f7D6eBA7a0BA1F1"
#!         },
#!         {
#!           "method": "set",
#!           "calldata": [
#!             "0x127782389999AaAAbBbbCcccddDdeabcfFFffa00",
#!             "453453453464564564564501",
#!             "1"
#!           ],
#!           "caller": "0x7c64A88ff3dCe48F9D3671991f7D6eBA7a0BA1F1"
#!         },
#!         {
#!           "method": "remove",
#!           "calldata": [
#!             "0x127782389999AaAAbBbbCcccddDdeabcfFFffa00",
#!             "453453453464564564564500"
#!           ],
#!           "caller": "0x7c64A88ff3dCe48F9D3671991f7D6eBA7a0BA1F1"
#!         },
#!         {
#!           "method": "get",
#!           "calldata": [
#!             "0x127782389999AaAAbBbbCcccddDdeabcfFFffa00",
#!             "453453453464564564564501"
#!           ],
#!           "caller": "0x7c64A88ff3dCe48F9D3671991f7D6eBA7a0BA1F1"
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
