#! {
#!   "modes": [
#!     "V <=0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "zero",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "0"
#!           ],
#!           "caller": "0x512515Da171273Db4258E7D1b52E337De54d923c"
#!         }
#!       ],
#!       "expected": [
#!         "0"
#!       ]
#!     },
#!     {
#!       "name": "ordinar",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "42"
#!           ],
#!           "caller": "0x6361B20B197784a64A49Af6ffb23d117dAa926ba"
#!         }
#!       ],
#!       "expected": [
#!         "42"
#!       ]
#!     },
#!     {
#!       "name": "max",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "170141183460469231731687303715884105727"
#!           ],
#!           "caller": "0x8aCb8e8cCA2e79D6c238198c931E93F38463d8Cc"
#!         }
#!       ],
#!       "expected": [
#!         "170141183460469231731687303715884105727"
#!       ]
#!     },
#!     {
#!       "name": "overflow_positive_minimal",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "170141183460469231731687303715884105728"
#!           ],
#!           "caller": "0xF4109F2761fC712d30b42e56315dD1077B65627d"
#!         }
#!       ],
#!       "expected": {
#!         "return_data": [],
#!         "exception": true
#!       }
#!     },
#!     {
#!       "name": "overflow_positive",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "21270141183460469231731687303715884105728"
#!           ],
#!           "caller": "0xb184eA08606FB2B95971e8C0E8b688469c2b82a9"
#!         }
#!       ],
#!       "expected": {
#!         "return_data": [],
#!         "exception": true
#!       }
#!     }
#!   ]
#! }

@external
@pure
def main(a: uint256) -> int128:
    return convert(a, int128)
