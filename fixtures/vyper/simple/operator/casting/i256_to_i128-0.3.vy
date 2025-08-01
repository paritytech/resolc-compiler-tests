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
#!           "caller": "0xea8Dd3876e769213f73470e8c4E77aAF731CC233"
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
#!           "caller": "0x55Bb5EbD79182D057a124fc89e0Da3fC386E98A6"
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
#!             "170141183460469231731687303715884105727"
#!           ],
#!           "caller": "0xF7e016F37980172b6E25F6a5F7824A4aE3bd66Ed"
#!         }
#!       ],
#!       "expected": [
#!         "170141183460469231731687303715884105727"
#!       ]
#!     },
#!     {
#!       "name": "overflow_negative_minimal",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "-170141183460469231731687303715884105729"
#!           ],
#!           "caller": "0x946e0063570C29224fEC2Ae14Db60953F31B5908"
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
#!             "-180141183460469231731687303715887105728"
#!           ],
#!           "caller": "0x1f67494Ad5Ae9D97C040d13105b3F629DeC892aE"
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
#!             "170141183460469231731687303715884105728"
#!           ],
#!           "caller": "0x549385008A0211D461466e2c74477Ce28dcf25A3"
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
#!             "190141183460469231731687303715884105728"
#!           ],
#!           "caller": "0x96f6BE66da9ed44618fF2FCe65bf2632AC57E8fb"
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
def main(a: int256) -> int128:
    return convert(a, int128)
