#! {
#!   "modes": [
#!     "V >=0.4.0"
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
#!           "caller": "0x245F98c66cBcE843be1EaFfeA2263CdF056Fc27b"
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
#!           "caller": "0x9c86CBAe6a03eD30283e1fF28EDA43ba55ff8F5f"
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
#!           "caller": "0xaa0c534A89B3Da2B252142a722cc43E315199541"
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
#!           "caller": "0x9A632D93b2fd92B1746f44081bCDF4c3E6e917C3"
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
#!           "caller": "0x6188B4D18Aa7bF46e1c22b06fA416A7348606fA5"
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
#!           "caller": "0xe524EBc18bbD71043E1011A86dEfA6cE6332b9f7"
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
