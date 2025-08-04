#! {
#!   "modes": [
#!     "V <=0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "zero_by_zero",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "0",
#!             "0"
#!           ],
#!           "caller": "0x9b3e8eFECF6D1795d10aAA53dfd97aD90756cd04"
#!         }
#!       ],
#!       "expected": {
#!         "return_data": [],
#!         "exception": true
#!       }
#!     },
#!     {
#!       "name": "ordinar_by_zero",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "42",
#!             "0"
#!           ],
#!           "caller": "0x9CA380D8Ee67A0557c8e9C30bcDeDA83044e17A3"
#!         }
#!       ],
#!       "expected": {
#!         "return_data": [],
#!         "exception": true
#!       }
#!     },
#!     {
#!       "name": "min_by_zero",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "-170141183460469231731687303715884105728",
#!             "0"
#!           ],
#!           "caller": "0x6D080349Eb3B888Ff06576C6af04D273f8e682cD"
#!         }
#!       ],
#!       "expected": {
#!         "return_data": [],
#!         "exception": true
#!       }
#!     },
#!     {
#!       "name": "max_by_zero",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "170141183460469231731687303715884105727",
#!             "0"
#!           ],
#!           "caller": "0xd2D0B1c7F967F254d3433D198fd1D05B268F2777"
#!         }
#!       ],
#!       "expected": {
#!         "return_data": [],
#!         "exception": true
#!       }
#!     },
#!     {
#!       "name": "ordinar_positive",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "42",
#!             "7"
#!           ],
#!           "caller": "0xfDc13c8Fc1EE8d4D3b203bEbCb5B5601240d2672"
#!         }
#!       ],
#!       "expected": [
#!         "6"
#!       ]
#!     },
#!     {
#!       "name": "ordinar_negative_divided",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "-42",
#!             "7"
#!           ],
#!           "caller": "0x429D5457440D47f7f8528eF06193156dB40bAB97"
#!         }
#!       ],
#!       "expected": [
#!         "-6"
#!       ]
#!     },
#!     {
#!       "name": "ordinar_negative_divider",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "42",
#!             "-7"
#!           ],
#!           "caller": "0x1F66AE5a2Ec7ba4abd1c44AFdC4500A3E31Eff0B"
#!         }
#!       ],
#!       "expected": [
#!         "-6"
#!       ]
#!     },
#!     {
#!       "name": "ordinar_negative_both",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "-42",
#!             "-7"
#!           ],
#!           "caller": "0xB041feBA996358Af49CE8Beaf1B08F4C032bc027"
#!         }
#!       ],
#!       "expected": [
#!         "6"
#!       ]
#!     },
#!     {
#!       "name": "ordinar_max_remainder",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "48",
#!             "7"
#!           ],
#!           "caller": "0x0A95F5eEA958f218b160bd23C237Dd69502f9F24"
#!         }
#!       ],
#!       "expected": [
#!         "6"
#!       ]
#!     },
#!     {
#!       "name": "ordinar_next",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "49",
#!             "7"
#!           ],
#!           "caller": "0x632B96b9642242C11769dAb8963d086b398c7946"
#!         }
#!       ],
#!       "expected": [
#!         "7"
#!       ]
#!     },
#!     {
#!       "name": "to_min_from_positive",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "170141183460469231731687303715884105727",
#!             "-1"
#!           ],
#!           "caller": "0x2a2632E86256EdCE1E1A480219C97CE5F1837bF4"
#!         }
#!       ],
#!       "expected": [
#!         "-170141183460469231731687303715884105727"
#!       ]
#!     },
#!     {
#!       "name": "to_min_from_negative",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "-170141183460469231731687303715884105728",
#!             "1"
#!           ],
#!           "caller": "0xed1BC98F04c478f74fb19fC738C8f1c9b9f46983"
#!         }
#!       ],
#!       "expected": [
#!         "-170141183460469231731687303715884105728"
#!       ]
#!     },
#!     {
#!       "name": "to_max",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "170141183460469231731687303715884105727",
#!             "1"
#!           ],
#!           "caller": "0x9103A9165Cb607C2Ed7bfe4EE02F1e4A674A8CA6"
#!         }
#!       ],
#!       "expected": [
#!         "170141183460469231731687303715884105727"
#!       ]
#!     },
#!     {
#!       "name": "to_one_positives",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "170141183460469231731687303715884105727",
#!             "170141183460469231731687303715884105727"
#!           ],
#!           "caller": "0x763Ee19Ee5BA8b1D58716B7E570c79108C12D45d"
#!         }
#!       ],
#!       "expected": [
#!         "1"
#!       ]
#!     },
#!     {
#!       "name": "min_to_negative_ordinar",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "-170141183460469231731687303715884105727",
#!             "3"
#!           ],
#!           "caller": "0x25e2a1583CEFFbb49f97E96833dF0433224a357a"
#!         }
#!       ],
#!       "expected": [
#!         "-56713727820156410577229101238628035242"
#!       ]
#!     },
#!     {
#!       "name": "max_to_negative_ordinar",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "170141183460469231731687303715884105727",
#!             "-3"
#!           ],
#!           "caller": "0x0d9D545dD5a0a09F729CC272ddF9f947BB20771c"
#!         }
#!       ],
#!       "expected": [
#!         "-56713727820156410577229101238628035242"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def main(a: int128, b: int128) -> int128:
    return a / b