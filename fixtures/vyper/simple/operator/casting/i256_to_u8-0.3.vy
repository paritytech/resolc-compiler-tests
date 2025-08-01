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
#!           "caller": "0x034E6fd1eE98AAeE150cb50bfCa0AC441176a563"
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
#!           "caller": "0xE59D8Cdc096931ecE73be41D9a9AD9259AA6195C"
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
#!             "255"
#!           ],
#!           "caller": "0x4fc66b60B6a18C81cfFB0437eBbe075d74628275"
#!         }
#!       ],
#!       "expected": [
#!         "255"
#!       ]
#!     },
#!     {
#!       "name": "overflow_negative_minimal",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "-1"
#!           ],
#!           "caller": "0x8d91239212091B1D65565e18bB4C7D25C33750A6"
#!         }
#!       ],
#!       "expected": {
#!         "return_data": [],
#!         "exception": true
#!       }
#!     },
#!     {
#!       "name": "overflow_negative",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "-42"
#!           ],
#!           "caller": "0x6c66a5330280350A7db1333054A70E7d68F2B70A"
#!         }
#!       ],
#!       "expected": {
#!         "return_data": [],
#!         "exception": true
#!       }
#!     },
#!     {
#!       "name": "overflow_positive_minimal",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "256"
#!           ],
#!           "caller": "0x5eD6109fCF0390DF0AfC7ba20f12bf52E6B5E093"
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
#!             "1000"
#!           ],
#!           "caller": "0xb02748dd602E2a92301eC8b38C56B3AeE1f22aeD"
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
def main(a: int256) -> uint8:
    return convert(a, uint8)
