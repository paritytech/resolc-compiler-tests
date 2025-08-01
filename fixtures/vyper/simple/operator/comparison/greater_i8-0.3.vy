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
#!           "caller": "0xcA6c784637Da70B221e90539A20099E4402Cd4D9"
#!         }
#!       ],
#!       "expected": [
#!         "0"
#!       ]
#!     },
#!     {
#!       "name": "ordinar_false_lesser",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "-25",
#!             "42"
#!           ],
#!           "caller": "0xB97182b42440278aF73F85656C831eCC4A2D17Aa"
#!         }
#!       ],
#!       "expected": [
#!         "0"
#!       ]
#!     },
#!     {
#!       "name": "ordinar_true_bigger",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "42",
#!             "-25"
#!           ],
#!           "caller": "0x832649620B0D516b942Ac68e710a063d99c9FaE0"
#!         }
#!       ],
#!       "expected": [
#!         "1"
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
#!           "caller": "0x9127d3546b021C2b951224853Cb65Fab3cA8E921"
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
#!           "caller": "0xC7bE19d1F7db1159f0F35d4A39Fe7Ab655097eBF"
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
#!           "caller": "0x38a9Cc5635b56c749f27b58Fa3e1D8094252F442"
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
#!           "caller": "0xe3938B7885F2313a7Cd4f0ceE1b7895f6984cf58"
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
    return a > b
