//! {
//!   "cases": [
//!     {
//!       "name": "zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "124"
//!           ],
//!           "caller": "0xe2b57f65f140f2c0dd6213180110a452594cc72a"
//!         }
//!       ],
//!       "expected": [
//!         "0x7C00000000000000000000000000000000000000000000000000000000000000"
//!       ]
//!     },
//!     {
//!       "name": "one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "232322334234234234234"
//!           ],
//!           "caller": "0x28e4fb7d8ab02eb0278c57a5a81243ff2e1a80e9"
//!         }
//!       ],
//!       "expected": [
//!         "0x7A00000000000000000000000000000000000000000000000000000000000000"
//!       ]
//!     },
//!     {
//!       "name": "small_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "19",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0x371e13d09b8b715d0e89312d9e4b7d6dd8223094"
//!         }
//!       ],
//!       "expected": [
//!         "0xFF00000000000000000000000000000000000000000000000000000000000000"
//!       ]
//!     },
//!     {
//!       "name": "word",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "32",
//!             "1"
//!           ],
//!           "caller": "0xbc7a4236960283edfe2ba1c20e0540af29a8fcf7"
//!         }
//!       ],
//!       "expected": [
//!         "0x0100000000000000000000000000000000000000000000000000000000000000"
//!       ]
//!     },
//!     {
//!       "name": "ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "2383",
//!             "23823848238483284838488483848348838348433"
//!           ],
//!           "caller": "0x0efe9e0ba0fd4ca5997db87bb6745426ad8b42f3"
//!         }
//!       ],
//!       "expected": [
//!         "0x9100000000000000000000000000000000000000000000000000000000000000"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_words",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xF100",
//!             "-12121312312312"
//!           ],
//!           "caller": "0x51cd9b360b2c5e1a2a30bdf3dc665efb930a9e40"
//!         }
//!       ],
//!       "expected": [
//!         "0x0800000000000000000000000000000000000000000000000000000000000000"
//!       ]
//!     },
//!     {
//!       "name": "big_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFAA",
//!             "9389324993493993"
//!           ],
//!           "caller": "0x1423e26f91b6e6cfe24940016bcfc263cc39029d"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_32",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFE0",
//!             "12"
//!           ],
//!           "caller": "0x68b7f3ab238332bfb568252b038553c785a7a260"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_31",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFE1",
//!             "9821984989898348938948943983489893489389438349834"
//!           ],
//!           "caller": "0xb6ee72be594a3700aabbbbd0d4690fbaa8a63656"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFEF",
//!             "0"
//!           ],
//!           "caller": "0x1e3a80cca35ee6994b0de9b35fec1a758e52a19c"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFFF",
//!             "999999999999"
//!           ],
//!           "caller": "0x662640f5d01f793f3736914ca0df6c7490025565"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0x100000000",
//!             "111"
//!           ],
//!           "caller": "0x743329b5bed64818af149a4f93dc551789487992"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "ordinar_bigger_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "3334353453452342342354355544445321191012012",
//!             "453245432"
//!           ],
//!           "caller": "0xe1f24b59ff32f65921ed4d30f586f4d44976a8a4"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "33"
//!           ],
//!           "caller": "0xad066ef93024cce94020b153199fd0c33117bf8f"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "zero_value",
//!       "inputs": [
//!         {
//!           "method": "overwrite",
//!           "calldata": [
//!             "2323",
//!             "0",
//!             "0xFF"
//!           ],
//!           "caller": "0x5a3bc45fefa1a1c3ec94e2bbf0ff468956880275"
//!         }
//!       ],
//!       "expected": [
//!         "0xFF00FF0000000000000000000000000000000000000000000000000000000000"
//!       ]
//!     },
//!     {
//!       "name": "one_value",
//!       "inputs": [
//!         {
//!           "method": "overwrite",
//!           "calldata": [
//!             "4",
//!             "1",
//!             "0xFF"
//!           ],
//!           "caller": "0x3e0833bd8bff75988faf61b6866949eba44af9ea"
//!         }
//!       ],
//!       "expected": [
//!         "0xFF01FF0000000000000000000000000000000000000000000000000000000000"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_small_value",
//!       "inputs": [
//!         {
//!           "method": "overwrite",
//!           "calldata": [
//!             "0",
//!             "197",
//!             "0xFF"
//!           ],
//!           "caller": "0x24f9d5234d5fb15352260571ff3a61582313c0cc"
//!         }
//!       ],
//!       "expected": [
//!         "0xC5FF000000000000000000000000000000000000000000000000000000000000"
//!       ]
//!     },
//!     {
//!       "name": "max_byte_value",
//!       "inputs": [
//!         {
//!           "method": "overwrite",
//!           "calldata": [
//!             "1233",
//!             "255",
//!             "0x00"
//!           ],
//!           "caller": "0x897a1d7cd119b97912f4d78a256bdaf2771b34c6"
//!         }
//!       ],
//!       "expected": [
//!         "0x00FF000000000000000000000000000000000000000000000000000000000000"
//!       ]
//!     },
//!     {
//!       "name": "256_value",
//!       "inputs": [
//!         {
//!           "method": "overwrite",
//!           "calldata": [
//!             "1233",
//!             "256",
//!             "0xFF"
//!           ],
//!           "caller": "0x5a017427dee3dab390aaf30356c861589a00d574"
//!         }
//!       ],
//!       "expected": [
//!         "0xFF00FF0000000000000000000000000000000000000000000000000000000000"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_big_value",
//!       "inputs": [
//!         {
//!           "method": "overwrite",
//!           "calldata": [
//!             "12122",
//!             "13482894893289489238489829389489238489284892388292332",
//!             "0xAA"
//!           ],
//!           "caller": "0x57cc480951355fb334e786f1136d4b655abe3a40"
//!         }
//!       ],
//!       "expected": [
//!         "0xAAECAA0000000000000000000000000000000000000000000000000000000000"
//!       ]
//!     },
//!     {
//!       "name": "max_value",
//!       "inputs": [
//!         {
//!           "method": "overwrite",
//!           "calldata": [
//!             "1024",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "0"
//!           ],
//!           "caller": "0x2327e5165eecf8f4a93b518a2132b333daae8c88"
//!         }
//!       ],
//!       "expected": [
//!         "0x00FF000000000000000000000000000000000000000000000000000000000000"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(uint256 key, uint256 value) external pure returns(uint256) {
        assembly {
            mstore8(key, value)
            return(key, 8)
        }
    }

    function overwrite(uint256 key, uint256 value, uint8 beforeValue) external pure returns(uint256) {
        assembly {
            let offset := sub(key, gt(key, 0))
            let len := add(2, gt(key, 0))
            for { let i := 0 } lt(i, len) { i := add(i, 1) }
            {
                mstore8(add(offset, i), beforeValue)
            }
            mstore8(key, value)
            return(offset, len)
        }
    }
}
