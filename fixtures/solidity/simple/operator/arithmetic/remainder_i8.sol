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
//!           "caller": "0xf0c577748369eeafe8D12f2B449911c2FB67aD45"
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
//!           "caller": "0x54D25809a9e0B0F812Ba71d1E3043f1c1311405D"
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
//!             "-128",
//!             "0"
//!           ],
//!           "caller": "0xd68e20E1a82daf53BEBe4CFc55d2abA589FD6eE5"
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
//!             "127",
//!             "0"
//!           ],
//!           "caller": "0x2a16c1cAa1Ff1F246BAF58b8d50855FDf30bbEEA"
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
//!       "name": "zero_positive",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42",
//!             "7"
//!           ],
//!           "caller": "0x19CEC2C947755aEEc1AaAFD52524A46D2fDa79bF"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "zero_negative_divided",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-42",
//!             "7"
//!           ],
//!           "caller": "0xc83f6FD0873d9598ecAA24A813273A431f5f5216"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "zero_negative_divider",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42",
//!             "-7"
//!           ],
//!           "caller": "0x1b95Da3D4A7F671cB193f32B587002365649A9Cd"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "zero_negative_both",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-42",
//!             "-7"
//!           ],
//!           "caller": "0xBE9f246E0641dA71Fbb89c81d70b1Eb05Deb8b8d"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_remainder_positive",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "45",
//!             "7"
//!           ],
//!           "caller": "0x71375F7392155e892c7670417CA14DB75512a9F5"
//!         }
//!       ],
//!       "expected": [
//!         "3"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_remainder_negative_divided",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-45",
//!             "7"
//!           ],
//!           "caller": "0x465B409123544BA12315262d11a8274F73846e7D"
//!         }
//!       ],
//!       "expected": [
//!         "-3"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_remainder_negative_divider",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "45",
//!             "-7"
//!           ],
//!           "caller": "0x4f2817a05e3D75aec51181796328a1ab5c64Fd79"
//!         }
//!       ],
//!       "expected": [
//!         "3"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_remainder_negative_both",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-45",
//!             "-7"
//!           ],
//!           "caller": "0xF9DF433bE8A58Cc9F80d64725d84369011c70580"
//!         }
//!       ],
//!       "expected": [
//!         "-3"
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
//!           "caller": "0x3A3B51f07F02744cbD9C5973f8919394F9fef6a3"
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
//!           "caller": "0x32518Dadf4b72AdE0687E05d439a7Eda6f51db70"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "max_to_min",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "127",
//!             "127"
//!           ],
//!           "caller": "0x6056dFA5eC7346BBBFdb77A14697966f5c7c4E73"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "max_to_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "127",
//!             "64"
//!           ],
//!           "caller": "0xeFC78792499CD16253B1A95f962A30578050Dbdb"
//!         }
//!       ],
//!       "expected": [
//!         "63"
//!       ]
//!     },
//!     {
//!       "name": "min_to_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-128",
//!             "127"
//!           ],
//!           "caller": "0x757C12B65d71D3eb5F6D7e65160E5943A9c72c29"
//!         }
//!       ],
//!       "expected": [
//!         "-1"
//!       ]
//!     },
//!     {
//!       "name": "min_to_negative_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-127",
//!             "3"
//!           ],
//!           "caller": "0x875758999A9a9bd648A4a7a7bDcE1B504Bde9097"
//!         }
//!       ],
//!       "expected": [
//!         "-1"
//!       ]
//!     },
//!     {
//!       "name": "max_to_negative_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "127",
//!             "-3"
//!           ],
//!           "caller": "0x05A761d8D7c0B65D5dF55D357946978872447c6D"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(int8 a, int8 b) public pure returns(int8) {
        return a % b;
    }
}
