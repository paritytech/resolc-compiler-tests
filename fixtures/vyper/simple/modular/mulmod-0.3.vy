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
#!           "caller": "0xE96Dc065451bEB0514CA8c54d624Ab456be4866f"
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
#!           "caller": "0x9678076A4f64671C99f8d48a2ae396aC4fA7E94d"
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
#!           "caller": "0x754d7588DD9C90075D3E60912b010bD1878a3bbA"
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
#!           "caller": "0xDFc761605bB5685777Ab29c195e7d15E40e19Dd1"
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
#!           "caller": "0x98BB2752f146fF992DB20E1C330c723f1FC8A9e2"
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
#!           "caller": "0xbe277d47632bd09F118B10E3E66DB9F90d50865B"
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
