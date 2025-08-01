#! {
#!   "modes": [
#!     "V >=0.4.0"
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
#!           "caller": "0xa43c44622dc6005575763f16a72981639754A689"
#!         }
#!       ],
#!       "expected": [
#!         "1"
#!       ]
#!     },
#!     {
#!       "name": "ordinar_positive",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "4"
#!           ],
#!           "caller": "0x617ee732e7BFAEe419C712545976589f399df0f9"
#!         }
#!       ],
#!       "expected": [
#!         "81"
#!       ]
#!     },
#!     {
#!       "name": "ordinar_negative",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "-4"
#!           ],
#!           "caller": "0x37506DD3753A3C4c5934E68e7406C5B7bd87Fb52"
#!         }
#!       ],
#!       "expected": {
#!         "return_data": [],
#!         "exception": true
#!       }
#!     },
#!     {
#!       "name": "to_max",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "80"
#!           ],
#!           "caller": "0xee2Fe9CF6E1b1B429D6FEdf1B9a5f47e5f26C2C8"
#!         }
#!       ],
#!       "expected": [
#!         "147808829414345923316083210206383297601"
#!       ]
#!     },
#!     {
#!       "name": "overflow",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "100"
#!           ],
#!           "caller": "0xF114eC400F34DC3186aC985132183E466Ecb64C6"
#!         }
#!       ],
#!       "expected": {
#!         "return_data": [],
#!         "exception": true
#!       }
#!     },
#!     {
#!       "name": "overflow_minimal",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "81"
#!           ],
#!           "caller": "0x666Bd77C0DdA6A3aE24c772544578167e0aB3f2F"
#!         }
#!       ],
#!       "expected": {
#!         "return_data": [],
#!         "exception": true
#!       }
#!     },
#!     {
#!       "name": "max_pow_overflow",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "340282366920938463463374607431768211455"
#!           ],
#!           "caller": "0xcB32A72BD1f6BFf9726845a1727D2b6302F1B7dC"
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
def main(a: int128) -> int128:
    return (-3) ** a
