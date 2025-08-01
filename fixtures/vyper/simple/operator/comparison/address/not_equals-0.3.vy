#! {
#!   "modes": [
#!     "V <=0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "zero_zero",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "0",
#!             "0"
#!           ],
#!           "caller": "0x33a8E0252Bad468c5a5aBBB71408ECB62AB0eb27"
#!         }
#!       ],
#!       "expected": [
#!         "0"
#!       ]
#!     },
#!     {
#!       "name": "ordinar_true_lesser",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "25",
#!             "42"
#!           ],
#!           "caller": "0x1690be4421D596e9729ea4B68cd77B6D28004A82"
#!         }
#!       ],
#!       "expected": [
#!         "1"
#!       ]
#!     },
#!     {
#!       "name": "ordinar_true_bigger",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "42",
#!             "25"
#!           ],
#!           "caller": "0x02F2C02Eb03227397B83B01fD9b96859ad0a6C04"
#!         }
#!       ],
#!       "expected": [
#!         "1"
#!       ]
#!     },
#!     {
#!       "name": "ordinar_false",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "42",
#!             "42"
#!           ],
#!           "caller": "0xE7fe4B052f5744CA095A2CEE749B24C6aD661576"
#!         }
#!       ],
#!       "expected": [
#!         "0"
#!       ]
#!     },
#!     {
#!       "name": "max_max",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "0xffffffffffffffffffffffffffffffffffffffff",
#!             "0xffffffffffffffffffffffffffffffffffffffff"
#!           ],
#!           "caller": "0x2378f8BfA25EB9F5199005B8E740ACECa3f275f3"
#!         }
#!       ],
#!       "expected": [
#!         "0"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def main(a: address, b: address) -> bool:
    return a != b
