//! {
//!   "cases": [
//!     {
//!       "name": "zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0"
//!           ],
//!           "caller": "0x8c99756c9cc2b368e17f93ba0f293111f5e1e8a8"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1"
//!           ],
//!           "caller": "0x81d1daf73954d9a3f3943ea33c97feff4e4ae578"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "small_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "19"
//!           ],
//!           "caller": "0x8f19a232abc3b3d06a2573af4e2a840860f9c440"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "word",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "32"
//!           ],
//!           "caller": "0xb0b3c0e4363bcc0632ca8bccf0cb73732168449d"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "2383"
//!           ],
//!           "caller": "0x459b8896986c3d5c6318ee70d9d7bab5f049d85c"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_words",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xF100"
//!           ],
//!           "caller": "0xb6cfe5953b92e9d26b448ef4d073260121aa796e"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "big_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFAA"
//!           ],
//!           "caller": "0x4f5cadd5db9e0fd22d7a84483ebd203875bb8c6e"
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
//!             "0xFFFFFFE0"
//!           ],
//!           "caller": "0xc88a2d14d2bc934385277a3eed362a7cfbc60952"
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
//!             "0xFFFFFFE1"
//!           ],
//!           "caller": "0x40fdd794222bbdce97a2607c7202e1d80427d451"
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
//!             "0xFFFFFFEF"
//!           ],
//!           "caller": "0x0b4e677940381c729c3f0e99194e3ec912b4fd3e"
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
//!             "0xFFFFFFFF"
//!           ],
//!           "caller": "0xde08adc2d5cffd70954e360c36b94de3d83f6d4e"
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
//!             "0x100000000"
//!           ],
//!           "caller": "0x764e84689c3ce0cb930e9bd8c8159fd5570d1113"
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
//!             "3334353453452342342354355544445321191012012"
//!           ],
//!           "caller": "0xacaa7434f1201568489f0ca8fc0fa67e795975cd"
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
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0xa183649374a14842868034beb0ebb1e83efb7fee"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "zero_value_zero",
//!       "inputs": [
//!         {
//!           "method": "with_value",
//!           "calldata": [
//!             "0",
//!             "0",
//!             "0xFF"
//!           ],
//!           "caller": "0xd5e8f8148b85488716875572eff9a8d8837ea486"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "zero_value_one",
//!       "inputs": [
//!         {
//!           "method": "with_value",
//!           "calldata": [
//!             "1",
//!             "0",
//!             "0xFF"
//!           ],
//!           "caller": "0x09d47558ae5ea1939ade1ead007540880d232ef3"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "zero_value_small_ordinar",
//!       "inputs": [
//!         {
//!           "method": "with_value",
//!           "calldata": [
//!             "19",
//!             "0",
//!             "0xFF"
//!           ],
//!           "caller": "0x135efbf3efbb6ef6623c3b4e98f43c7773a63c52"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "zero_value_word",
//!       "inputs": [
//!         {
//!           "method": "with_value",
//!           "calldata": [
//!             "32",
//!             "0",
//!             "0xFF"
//!           ],
//!           "caller": "0x6540dd01655f6823afa634dca130734cd464e10d"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "zero_value_ordinar",
//!       "inputs": [
//!         {
//!           "method": "with_value",
//!           "calldata": [
//!             "2383",
//!             "0",
//!             "0xFF"
//!           ],
//!           "caller": "0xf8f17c571b6cf618fc02b00e0a9d92a54883c241"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "zero_value_ordinar_words",
//!       "inputs": [
//!         {
//!           "method": "with_value",
//!           "calldata": [
//!             "0xF100",
//!             "0",
//!             "0xFF"
//!           ],
//!           "caller": "0x68757d19ce5e56f3a8ed85e03b76676d050247a0"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "one_value_zero",
//!       "inputs": [
//!         {
//!           "method": "with_value",
//!           "calldata": [
//!             "0",
//!             "1",
//!             "0xFF"
//!           ],
//!           "caller": "0xff9f53829a876dc0a615043c85da3c5655780ce4"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "one_value_one",
//!       "inputs": [
//!         {
//!           "method": "with_value",
//!           "calldata": [
//!             "1",
//!             "1",
//!             "0xFF"
//!           ],
//!           "caller": "0x06fd401d81bdbd75f12739c137bbb8e5446d37ec"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "one_value_small_ordinar",
//!       "inputs": [
//!         {
//!           "method": "with_value",
//!           "calldata": [
//!             "19",
//!             "1",
//!             "0xFF"
//!           ],
//!           "caller": "0x318c7c42c9b1d92da2c27c6553455f1b543e9c1c"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "one_value_word",
//!       "inputs": [
//!         {
//!           "method": "with_value",
//!           "calldata": [
//!             "32",
//!             "1",
//!             "0xFF"
//!           ],
//!           "caller": "0x120a6c71d38b6dd593be0826ef979ece26ceb297"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "one_value_ordinar",
//!       "inputs": [
//!         {
//!           "method": "with_value",
//!           "calldata": [
//!             "2383",
//!             "1",
//!             "0xFF"
//!           ],
//!           "caller": "0xa3ca200d119dd1ef8e335237bc67980a5776d20d"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "one_value_ordinar_words",
//!       "inputs": [
//!         {
//!           "method": "with_value",
//!           "calldata": [
//!             "0xF100",
//!             "1",
//!             "0xFF"
//!           ],
//!           "caller": "0x79abb9ae4c00936ebf09a6ae7645377bb9c5ff17"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_value_zero",
//!       "inputs": [
//!         {
//!           "method": "with_value",
//!           "calldata": [
//!             "0",
//!             "2513561237612763712737127371273871283871273172",
//!             "0xFF"
//!           ],
//!           "caller": "0x6b1797d28ed800ffbaf27a82b61004073149c017"
//!         }
//!       ],
//!       "expected": [
//!         "2513561237612763712737127371273871283871273172"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_value_one",
//!       "inputs": [
//!         {
//!           "method": "with_value",
//!           "calldata": [
//!             "1",
//!             "2513561237612763712737127371273871283871273172",
//!             "0xFF"
//!           ],
//!           "caller": "0xd72830706455367e36a35da8d4b1d3d5a277e99c"
//!         }
//!       ],
//!       "expected": [
//!         "2513561237612763712737127371273871283871273172"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_value_small_ordinar",
//!       "inputs": [
//!         {
//!           "method": "with_value",
//!           "calldata": [
//!             "19",
//!             "2513561237612763712737127371273871283871273172",
//!             "0xFF"
//!           ],
//!           "caller": "0x8f87dc0f165e397f4a4cc3c39b0f397b9c2e6d7b"
//!         }
//!       ],
//!       "expected": [
//!         "2513561237612763712737127371273871283871273172"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_value_word",
//!       "inputs": [
//!         {
//!           "method": "with_value",
//!           "calldata": [
//!             "32",
//!             "2513561237612763712737127371273871283871273172",
//!             "0xFF"
//!           ],
//!           "caller": "0xbf1fb0f7790db7f009f8562a12ef05c549b7e7ed"
//!         }
//!       ],
//!       "expected": [
//!         "2513561237612763712737127371273871283871273172"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_value_ordinar",
//!       "inputs": [
//!         {
//!           "method": "with_value",
//!           "calldata": [
//!             "2383",
//!             "2513561237612763712737127371273871283871273172",
//!             "0xFF"
//!           ],
//!           "caller": "0x0c9d9bf00590b2bc27147b66342995947593718e"
//!         }
//!       ],
//!       "expected": [
//!         "2513561237612763712737127371273871283871273172"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_value_ordinar_words",
//!       "inputs": [
//!         {
//!           "method": "with_value",
//!           "calldata": [
//!             "0xF100",
//!             "2513561237612763712737127371273871283871273172",
//!             "0xFF"
//!           ],
//!           "caller": "0x4b37a8bbdd1ea988e62882063d2dbf579c94808b"
//!         }
//!       ],
//!       "expected": [
//!         "2513561237612763712737127371273871283871273172"
//!       ]
//!     },
//!     {
//!       "name": "max_value_zero",
//!       "inputs": [
//!         {
//!           "method": "with_value",
//!           "calldata": [
//!             "0",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "0"
//!           ],
//!           "caller": "0x23721cd7c03fba875f2f9ec0ff11feb0515ddef5"
//!         }
//!       ],
//!       "expected": [
//!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!       ]
//!     },
//!     {
//!       "name": "max_value_one",
//!       "inputs": [
//!         {
//!           "method": "with_value",
//!           "calldata": [
//!             "1",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "0"
//!           ],
//!           "caller": "0x3a53684e6e6816be76505ba8cbf54410974f11b1"
//!         }
//!       ],
//!       "expected": [
//!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!       ]
//!     },
//!     {
//!       "name": "max_value_small_ordinar",
//!       "inputs": [
//!         {
//!           "method": "with_value",
//!           "calldata": [
//!             "19",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "0"
//!           ],
//!           "caller": "0x4e2d25ca9a129bf497f50ea100360e1b57545ea0"
//!         }
//!       ],
//!       "expected": [
//!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!       ]
//!     },
//!     {
//!       "name": "max_value_word",
//!       "inputs": [
//!         {
//!           "method": "with_value",
//!           "calldata": [
//!             "32",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "0"
//!           ],
//!           "caller": "0x65d8b8497e835ee8571454ca7e539e57b708c11f"
//!         }
//!       ],
//!       "expected": [
//!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!       ]
//!     },
//!     {
//!       "name": "max_value_ordinar",
//!       "inputs": [
//!         {
//!           "method": "with_value",
//!           "calldata": [
//!             "2383",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "0"
//!           ],
//!           "caller": "0xb88cc15a720fec04a9fa70d32ba8d726b0d3d811"
//!         }
//!       ],
//!       "expected": [
//!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!       ]
//!     },
//!     {
//!       "name": "max_value_ordinar_words",
//!       "inputs": [
//!         {
//!           "method": "with_value",
//!           "calldata": [
//!             "0xF100",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "0"
//!           ],
//!           "caller": "0x672e8a27d77eeefed078fc86e94d8a5b2931ad79"
//!         }
//!       ],
//!       "expected": [
//!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.19;

contract Test {
    function main(uint256 key) external pure returns(uint256) {
        assembly {
            mstore(0, mload(key))
            return(0, 32)
        }
    }

    function with_value(uint256 key, uint256 value, uint8 outside) external pure returns(uint256) {
        assembly {
            if gt(key, 0) {
                mstore8(sub(key, 1), outside)
            }
            mstore8(add(key, 32), outside)
            mstore(key, value)
            mstore(0, mload(key))
            return(0, 32)
        }
    }
}
