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
//!           "caller": "0x1B287c44D0B5Ff02BABdced191381125F5DDA879"
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
//!           "caller": "0x4F524B2260E919a7f59692ED36f3C5FC2deeBEAd"
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
//!           "caller": "0xA6CC0Ffb5d18C7a354f3Aa3341671BfC2284A76F"
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
//!           "caller": "0x242A20dA8F8036Ce7a7d7E217362feA1A2A9DB97"
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
//!           "caller": "0x6a63Cb0dB5D8Ede2fcFDD55615c5320cFfFBc30f"
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
//!           "caller": "0x7733bA559D74DbD259bEc16B47EC6A27e467Ab03"
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
//!           "caller": "0xB46680CfEFaCC27E95AA8E40d05231825202A765"
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
//!           "caller": "0x871912E6B801a24F94923e8065800C2ef9FE40BC"
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
//!           "caller": "0xD67BAaD7E044A10a3826F7b1D1Fc5A50489790f6"
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
//!           "caller": "0xb10541C99123C31102033342B636256DDc6Fa87b"
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
//!           "caller": "0x52Ee448424F217bd77b7f662c9bADe9b4b101225"
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
//!           "caller": "0x5a68b579e2973B91262f9679958f2Ee370C4514C"
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
//!           "caller": "0x8183698385d12e6Ff8d2781B2B535fe7c39655ee"
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
//!           "caller": "0x8DF4B589cE567900b4cE6cf2eB757bF03C4B4946"
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
//!           "caller": "0x23e50c4E2e55acfE1d127A3005Ab72387AF5E665"
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
//!           "caller": "0x8767721b3272A2E7F24aA2F9Bd821FE8ED35d151"
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
//!           "caller": "0xA1773Ff03e321396Bcd0d494EdF57668003A30a5"
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
//!           "caller": "0x7a4f8AdC6BBaEFb52d99BDAD051CA29C44D99dB1"
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
//!           "caller": "0xbFE2a35f844A6E1d06dd3DE7e389888B05029B07"
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
//!           "caller": "0x85e611c0421d1394112CF553B6d15289CB7B30E2"
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
//!           "caller": "0xCA4F074af6f9F179201E87d1A8299aF97b2Bf11e"
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
