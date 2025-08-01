#! {
#!   "modes": [
#!     "V <=0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "by_zero",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "1",
#!             "2",
#!             "0"
#!           ],
#!           "caller": "0x10bFF16D881FeC50bFD627bD529d50e9A8e00dbd"
#!         }
#!       ],
#!       "expected": {
#!         "return_data": [],
#!         "exception": true
#!       }
#!     },
#!     {
#!       "name": "ordinar_zero",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "42",
#!             "42",
#!             "1764"
#!           ],
#!           "caller": "0xB236a7d2567eF4f8D6d48CE4DE40F7f04651e856"
#!         }
#!       ],
#!       "expected": [
#!         "0"
#!       ]
#!     },
#!     {
#!       "name": "ordinar_non_zero",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "41",
#!             "2",
#!             "40"
#!           ],
#!           "caller": "0x651F917e865567487e2Cc752574e66B7a05dBA35"
#!         }
#!       ],
#!       "expected": [
#!         "2"
#!       ]
#!     },
#!     {
#!       "name": "overflow_minimal_zero",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
#!             "2",
#!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
#!           ],
#!           "caller": "0xAefa25947d7800Bfa7E6B595c26307F4ca4a1789"
#!         }
#!       ],
#!       "expected": [
#!         "0"
#!       ]
#!     },
#!     {
#!       "name": "overflow_minimal_non_zero",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE",
#!             "2",
#!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
#!           ],
#!           "caller": "0xE31EE7764d7090729E2ef9ba7fe459133542B496"
#!         }
#!       ],
#!       "expected": [
#!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD"
#!       ]
#!     },
#!     {
#!       "name": "overflow",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
#!             "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
#!             "0x000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
#!           ],
#!           "caller": "0xe2c71a55d62e5F43C7Db04d1EF95Cc811eA3E384"
#!         }
#!       ],
#!       "expected": [
#!         "0x000000000000000000584D2AF1A1416B1F5F2B856DE5EE852CE4AB806250494C"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def main(x: uint256, y: uint256, m: uint256) -> uint256:
    return uint256_mulmod(x, y, m)
