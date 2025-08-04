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
#!           "caller": "0xbDdeC2E27B016eEe0803C4b62abC85186DDFD09C"
#!         }
#!       ],
#!       "expected": [
#!         "0"
#!       ]
#!     },
#!     {
#!       "name": "ordinar_negative",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "-42"
#!           ],
#!           "caller": "0xFe90897aD15a1481A501bE0Bc6dc71562272b0E3"
#!         }
#!       ],
#!       "expected": [
#!         "42"
#!       ]
#!     },
#!     {
#!       "name": "ordinar_positive",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "42"
#!           ],
#!           "caller": "0x6F5EC63649359ec2a26f4a2238dcB7C9F0A60ae8"
#!         }
#!       ],
#!       "expected": [
#!         "-42"
#!       ]
#!     },
#!     {
#!       "name": "max_to_min",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "170141183460469231731687303715884105727"
#!           ],
#!           "caller": "0xDC07a3c611E516Be8A77AA88ff44E24321491a75"
#!         }
#!       ],
#!       "expected": [
#!         "-170141183460469231731687303715884105727"
#!       ]
#!     },
#!     {
#!       "name": "almost_min_to_max",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "-170141183460469231731687303715884105727"
#!           ],
#!           "caller": "0xc443B6903B9e6206a1006EB9771C555Dc7511F39"
#!         }
#!       ],
#!       "expected": [
#!         "170141183460469231731687303715884105727"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def main(a: int128) -> int128:
    return -a
