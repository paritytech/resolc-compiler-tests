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
#!           "caller": "0x472b3d0DD79Cea8AB0F0A10B0Dd695E86d57D59A"
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
#!             "-25",
#!             "42"
#!           ],
#!           "caller": "0x2a51359f2e1bFB599eaBB24807Cb31B9625769e3"
#!         }
#!       ],
#!       "expected": [
#!         "1"
#!       ]
#!     },
#!     {
#!       "name": "ordinar_false_bigger",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "42",
#!             "-25"
#!           ],
#!           "caller": "0xF4a94C7F3f5C6a0B23E79F4aE14e581e28E61B8b"
#!         }
#!       ],
#!       "expected": [
#!         "0"
#!       ]
#!     },
#!     {
#!       "name": "ordinar_false_negative",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "-42",
#!             "-42"
#!           ],
#!           "caller": "0x7f808434C85651D2CCf6a666FE7BD26B50fD033f"
#!         }
#!       ],
#!       "expected": [
#!         "0"
#!       ]
#!     },
#!     {
#!       "name": "ordinar_false_positive",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "42",
#!             "42"
#!           ],
#!           "caller": "0xeE3C316b76bd8565a7Db66B51048e7259c9c7746"
#!         }
#!       ],
#!       "expected": [
#!         "0"
#!       ]
#!     },
#!     {
#!       "name": "min_min",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "-128",
#!             "-128"
#!           ],
#!           "caller": "0x715f8DC1119343E87dF7012E7093224fFBFF54b1"
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
#!             "127",
#!             "127"
#!           ],
#!           "caller": "0xc0982262BeE5944E776F00359FB9fE0cDD5C13aF"
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
def main(a: int8, b: int8) -> bool:
    return a < b
