//! {
//!   "cases": [
//!     {
//!       "name": "zero_by_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "0"
//!           ],
//!           "caller": "0xb2d8dC64Ff47500A5B1A3037EB25909816203cf7"
//!         }
//!       ],
//!       "expected": [
//!         {
//!           "compiler_version": "<0.8",
//!           "return_data": [],
//!           "exception": true
//!         },
//!         {
//!           "compiler_version": ">=0.8",
//!           "return_data": [
//!             "0x4E487B7100000000000000000000000000000000000000000000000000000000",
//!             "0x0000001200000000000000000000000000000000000000000000000000000000"
//!           ],
//!           "exception": true
//!         }
//!       ]
//!     },
//!     {
//!       "name": "ordinar_by_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42",
//!             "0"
//!           ],
//!           "caller": "0x80c685b9360fBBe49F90798e27cc9c4768cc13AE"
//!         }
//!       ],
//!       "expected": [
//!         {
//!           "compiler_version": "<0.8",
//!           "return_data": [],
//!           "exception": true
//!         },
//!         {
//!           "compiler_version": ">=0.8",
//!           "return_data": [
//!             "0x4E487B7100000000000000000000000000000000000000000000000000000000",
//!             "0x0000001200000000000000000000000000000000000000000000000000000000"
//!           ],
//!           "exception": true
//!         }
//!       ]
//!     },
//!     {
//!       "name": "min_by_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-170141183460469231731687303715884105728",
//!             "0"
//!           ],
//!           "caller": "0x674087CcF021ecBefeEE5404ee93eeE01599e927"
//!         }
//!       ],
//!       "expected": [
//!         {
//!           "compiler_version": "<0.8",
//!           "return_data": [],
//!           "exception": true
//!         },
//!         {
//!           "compiler_version": ">=0.8",
//!           "return_data": [
//!             "0x4E487B7100000000000000000000000000000000000000000000000000000000",
//!             "0x0000001200000000000000000000000000000000000000000000000000000000"
//!           ],
//!           "exception": true
//!         }
//!       ]
//!     },
//!     {
//!       "name": "max_by_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "170141183460469231731687303715884105727",
//!             "0"
//!           ],
//!           "caller": "0xbEdB752F262aABE55d30F77c159394011C5b49f7"
//!         }
//!       ],
//!       "expected": [
//!         {
//!           "compiler_version": "<0.8",
//!           "return_data": [],
//!           "exception": true
//!         },
//!         {
//!           "compiler_version": ">=0.8",
//!           "return_data": [
//!             "0x4E487B7100000000000000000000000000000000000000000000000000000000",
//!             "0x0000001200000000000000000000000000000000000000000000000000000000"
//!           ],
//!           "exception": true
//!         }
//!       ]
//!     },
//!     {
//!       "name": "ordinar_positive",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42",
//!             "7"
//!           ],
//!           "caller": "0xC5F78F381A4a384f262Bb30169aB53edD1b12E75"
//!         }
//!       ],
//!       "expected": [
//!         "6"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_negative_divided",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-42",
//!             "7"
//!           ],
//!           "caller": "0xf4196b6A57cbA1DaEc83b08B9d722c8F75Ded6D8"
//!         }
//!       ],
//!       "expected": [
//!         "-6"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_negative_divider",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42",
//!             "-7"
//!           ],
//!           "caller": "0x438Ca190209A8E7C14A92198C575Eae3f92152D0"
//!         }
//!       ],
//!       "expected": [
//!         "-6"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_negative_both",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-42",
//!             "-7"
//!           ],
//!           "caller": "0x64D5266D56063F56edAaa51Ffb955cE6Cdb09436"
//!         }
//!       ],
//!       "expected": [
//!         "6"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_max_remainder",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "48",
//!             "7"
//!           ],
//!           "caller": "0x90682e55650b3044aE0370a39Ff83b9d0fC27506"
//!         }
//!       ],
//!       "expected": [
//!         "6"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_next",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "49",
//!             "7"
//!           ],
//!           "caller": "0xF56aC4C71F4609C56F0F4B06200bB6C42c601211"
//!         }
//!       ],
//!       "expected": [
//!         "7"
//!       ]
//!     },
//!     {
//!       "name": "to_min_from_positive",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "170141183460469231731687303715884105727",
//!             "-1"
//!           ],
//!           "caller": "0x85EdbB66472c71E0a8a68b266D76e95d152B8F1a"
//!         }
//!       ],
//!       "expected": [
//!         "-170141183460469231731687303715884105727"
//!       ]
//!     },
//!     {
//!       "name": "to_min_from_negative",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-170141183460469231731687303715884105728",
//!             "1"
//!           ],
//!           "caller": "0x020b7F091689120D2d59955ad1c0C4E5f9595E54"
//!         }
//!       ],
//!       "expected": [
//!         "-170141183460469231731687303715884105728"
//!       ]
//!     },
//!     {
//!       "name": "to_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "170141183460469231731687303715884105727",
//!             "1"
//!           ],
//!           "caller": "0xB0d676ad5F03159494E5Daa4cc972d5BD3837428"
//!         }
//!       ],
//!       "expected": [
//!         "170141183460469231731687303715884105727"
//!       ]
//!     },
//!     {
//!       "name": "to_one_positives",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "170141183460469231731687303715884105727",
//!             "170141183460469231731687303715884105727"
//!           ],
//!           "caller": "0x5Ae9CE3F41EF5D71bd372d6B4bf2b84BA3B3A60D"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "min_to_negative_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-170141183460469231731687303715884105727",
//!             "3"
//!           ],
//!           "caller": "0x48e1B073c40dB927DB47cF85c2E61895De81AC1c"
//!         }
//!       ],
//!       "expected": [
//!         "-56713727820156410577229101238628035242"
//!       ]
//!     },
//!     {
//!       "name": "max_to_negative_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "170141183460469231731687303715884105727",
//!             "-3"
//!           ],
//!           "caller": "0x1d9FF1F8422F6e427c1fc49BE5C2D96081AC0512"
//!         }
//!       ],
//!       "expected": [
//!         "-56713727820156410577229101238628035242"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(int128 a, int128 b) public pure returns(int128) {
        return a / b;
    }
}
