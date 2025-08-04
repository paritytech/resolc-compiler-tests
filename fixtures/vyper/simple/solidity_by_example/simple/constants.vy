#! {
#!   "modes": [
#!     "V >=0.4.0"
#!   ],
#!   "cases": [
#!     {
#!       "name": "address",
#!       "inputs": [
#!         {
#!           "method": "GET_MY_ADDRESS",
#!           "calldata": [],
#!           "caller": "0x3d9f6BaC91f992e3f0B526E52c432Bbd407849d6"
#!         }
#!       ],
#!       "expected": [
#!         "0x777788889999AaAAbBbbCcccddDdeeeEfFFfCcCc"
#!       ]
#!     },
#!     {
#!       "name": "uint",
#!       "inputs": [
#!         {
#!           "method": "GET_MY_UINT",
#!           "calldata": [],
#!           "caller": "0x332A28a44B81a23521BacaD39b331b963717E574"
#!         }
#!       ],
#!       "expected": [
#!         "123"
#!       ]
#!     }
#!   ]
#! }

MY_ADDRESS: constant(address) = 0x777788889999AaAAbBbbCcccddDdeeeEfFFfCcCc
MY_UINT: constant(uint256) = 123

@external
def GET_MY_ADDRESS() -> address:
    return MY_ADDRESS

@external
def GET_MY_UINT() -> uint256:
    return MY_UINT
