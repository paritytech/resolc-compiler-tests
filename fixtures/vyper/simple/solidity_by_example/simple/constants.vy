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
#!           "caller": "0xE1138cA79d0Ac4c3888b3a2b23046A157F6082dd"
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
#!           "caller": "0x6E2399300dC14AcD3bEA40D36f0e382819db737D"
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
