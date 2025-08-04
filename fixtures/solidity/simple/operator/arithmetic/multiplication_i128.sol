//! {
//!   "cases": [
//!     {
//!       "name": "zero_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "0"
//!           ],
//!           "caller": "0xd4ABBD2f7aE50c71c18FF729e53f947cC910E970"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_positive",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42",
//!             "3"
//!           ],
//!           "caller": "0x67BD4C68952b76C1eb2495Aaaabe232De3647735"
//!         }
//!       ],
//!       "expected": [
//!         "126"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_negative_first",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-42",
//!             "3"
//!           ],
//!           "caller": "0xDD4c904823f60781DFAaf5Cb07e1eb9Ad4D1Ad9c"
//!         }
//!       ],
//!       "expected": [
//!         "-126"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_negative_second",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42",
//!             "-3"
//!           ],
//!           "caller": "0xd100Eb91a8F9208A533B3c132AE38AAA89df8507"
//!         }
//!       ],
//!       "expected": [
//!         "-126"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_negative_both",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-42",
//!             "-3"
//!           ],
//!           "caller": "0x37028B5081ad1C9DB29c58952DC15A262356d4F4"
//!         }
//!       ],
//!       "expected": [
//!         "126"
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
//!           "caller": "0xa4b5A19217E0F9D212a246c2730cda74Abc69629"
//!         }
//!       ],
//!       "expected": [
//!         "170141183460469231731687303715884105727"
//!       ]
//!     },
//!     {
//!       "name": "overflow_negative",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-170141183460469231731687303605884105727",
//!             "2"
//!           ],
//!           "caller": "0x652843479084fF8010AFC5f6891d1Ed0D46AB488"
//!         }
//!       ],
//!       "expected": [
//!         {
//!           "compiler_version": "<0.8",
//!           "return_data": [
//!             "220000000002"
//!           ],
//!           "exception": false
//!         },
//!         {
//!           "compiler_version": ">=0.8",
//!           "return_data": [
//!             "0x4E487B7100000000000000000000000000000000000000000000000000000000",
//!             "0x0000001100000000000000000000000000000000000000000000000000000000"
//!           ],
//!           "exception": true
//!         }
//!       ]
//!     },
//!     {
//!       "name": "overflow_positive",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "110141183460469231731687303715884105727",
//!             "2"
//!           ],
//!           "caller": "0xa0C95A0D71dEB1A286EBf3557Caf7Fe012aE2131"
//!         }
//!       ],
//!       "expected": [
//!         {
//!           "compiler_version": "<0.8",
//!           "return_data": [
//!             "-120000000000000000000000000000000000002"
//!           ],
//!           "exception": false
//!         },
//!         {
//!           "compiler_version": ">=0.8",
//!           "return_data": [
//!             "0x4E487B7100000000000000000000000000000000000000000000000000000000",
//!             "0x0000001100000000000000000000000000000000000000000000000000000000"
//!           ],
//!           "exception": true
//!         }
//!       ]
//!     },
//!     {
//!       "name": "overflow_minimal",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "16",
//!             "10633823966279326983230456482242756608"
//!           ],
//!           "caller": "0x1b395d6B33cDE53DA4dDe76c01B9Bb999A2A936C"
//!         }
//!       ],
//!       "expected": [
//!         {
//!           "compiler_version": "<0.8",
//!           "return_data": [
//!             "-170141183460469231731687303715884105728"
//!           ],
//!           "exception": false
//!         },
//!         {
//!           "compiler_version": ">=0.8",
//!           "return_data": [
//!             "0x4E487B7100000000000000000000000000000000000000000000000000000000",
//!             "0x0000001100000000000000000000000000000000000000000000000000000000"
//!           ],
//!           "exception": true
//!         }
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(int128 a, int128 b) public pure returns(int128) {
        return a * b;
    }
}
