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
#!           "caller": "0x3535cE7a066C9a9eA2F106449775ed806179657f"
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
#!           "caller": "0xb27FF84569d41d262dADa0ce34f6FFA46FDEdc1a"
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
#!           "caller": "0x3e9EFB64828D05CE7f6cB04505497231f228D5F7"
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
#!           "caller": "0x23b83bD90aee7e59fdf9ec81Dc1C6e9ad3C9B40E"
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
#!           "caller": "0xCff7DAcbedb35FCe6bc4EC311DBcb053F1D4f6cb"
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
#!           "caller": "0x43358165c4DD1E64a55eA3a621C4FBdFC1883660"
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
#!           "caller": "0xE5032B26801402E668E3112a87c1F4A5EeAEd5c1"
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
