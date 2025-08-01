#! {
#!   "modes": [
#!     "V <=0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "address",
#!       "inputs": [
#!         {
#!           "method": "MY_ADDRESS",
#!           "calldata": [],
#!           "caller": "0x6eA51Ca495A3b581131e3E80ee3A4EB093846c0a"
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
#!           "method": "MY_UINT",
#!           "calldata": [],
#!           "caller": "0x1a26581c7f3edf39e0B3Bc84F203e704eb5b8665"
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
def MY_ADDRESS() -> address:
    return MY_ADDRESS

@external
def MY_UINT() -> uint256:
    return MY_UINT
