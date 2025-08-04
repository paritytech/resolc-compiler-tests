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
//!           "caller": "0xa59E3C6A17C684a9E2A443d621435Ab8003D5415"
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
//!           "caller": "0xBA2fa7c9FEB2880bE8Ac24A403968cCd574Ebb3d"
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
//!           "caller": "0x28Ca073f68C118BAa9bD225377E595AE6A09FB99"
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
//!           "caller": "0x64dc19b69F2ac9C55B3FfDB99161EDb4316eeF51"
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
//!           "caller": "0xF3e21ff07C43f9aADF49f3fE25F9AECf558Fb574"
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
//!           "caller": "0xE56780B345435DE0c14Afb18827E8E0baAf00910"
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
//!           "caller": "0xf4a616EA41496b96efBB415eCa9CB645092a8C1F"
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
//!           "caller": "0x31D86e6225F653eBa4dC5978bb4873BF763FF6B6"
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
//!           "caller": "0x477239584A711d3c9e22aE95Ab592E95d869D696"
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
//!           "caller": "0xd47dbd719aE08FFea4f337A96200Ae4438B4406e"
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
//!           "caller": "0xd456A697F4D08a0f38BD9A2ba0c35CE845687eDE"
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
//!           "caller": "0xd8e9a314d63040f0aDCdD197807C705ab8909ec1"
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
//!           "caller": "0xbd36d7158D27d1E33ADfF63a0781F6727B75DE7A"
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
//!           "caller": "0x2C7e38442a76Da16E4Abdbc907032574ed9E8fCF"
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
//!           "caller": "0xde916e433AD32e1a6F3BC2d477226b8Feb1b8828"
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
//!           "caller": "0x44fF74C8428521bd9b16150a58444163Bc60B101"
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
//!           "caller": "0x0C6d75Ed5EF8abb564219EbF612B7c943CDc346B"
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
//!           "caller": "0x616eC2Ec3480fb86C40A4e88B2d631bd14408f8A"
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
//!           "caller": "0x8e89a711360B919DB5D27b0F631f5d1c695d688e"
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
//!           "caller": "0x04dfc1e6FD3Bd6cb429EB4fD44aAd81893c7BA78"
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
//!           "caller": "0x625c2A2E8e1dAf1Aa391e5F46924085AaF05B701"
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
