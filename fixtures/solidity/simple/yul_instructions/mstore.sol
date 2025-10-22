//! {
//!   "cases": [
//!     {
//!       "name": "zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "394934348834929392931283812381292121"
//!           ],
//!           "caller": "0x9d6ac4ec00137a3a50a601fc5684f7cb6279fc30"
//!         }
//!       ],
//!       "expected": [
//!         "394934348834929392931283812381292121"
//!       ]
//!     },
//!     {
//!       "name": "one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "23232"
//!           ],
//!           "caller": "0x52197500f1e092e854488ba00acc645a9fd576f6"
//!         }
//!       ],
//!       "expected": [
//!         "23232"
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
//!           "caller": "0xe82d5371997a63e520fa7b520b59909c45456b7d"
//!         }
//!       ],
//!       "expected": [
//!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
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
//!           "caller": "0x4ed0be1dfb5d83f49aafd5fb722a0ee9e6a71039"
//!         }
//!       ],
//!       "expected": [
//!         "1"
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
//!           "caller": "0x13de61465717d17757b90a82e6c92156ad3772bb"
//!         }
//!       ],
//!       "expected": [
//!         "23823848238483284838488483848348838348433"
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
//!           "caller": "0xda6faefc27dff09bccc5af872a0e5761dda889a0"
//!         }
//!       ],
//!       "expected": [
//!         "-12121312312312"
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
//!           "caller": "0x3e1b017fa64e927b14520b0522704ae39ad78eb0"
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
//!           "caller": "0x7f3bafcb01eab8dbdc314c07b9ed43f15c4a2ddc"
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
//!           "caller": "0xcdc2a7a7f4d9700c948e82c83f8e37db8bccaa66"
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
//!           "caller": "0x525c82f73035ff2cd6aef74a1c00a29c63fecea9"
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
//!           "caller": "0x2fc337315bfe83ab4bf9e825a68fbd2c5ae62d19"
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
//!           "caller": "0x9c1525c85aa77085a614f9808b97ce617b724b01"
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
//!           "caller": "0x1c8d874e771acda2638a04f51d5189b2ac367b87"
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
//!           "caller": "0x194cf91a035b27bd17ebbb5b5dd9ff7d7f23e92d"
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
//!           "caller": "0x1a89eb90c0e8f1a25d6d1875b44c5ffd73170769"
//!         }
//!       ],
//!       "expected": [
//!         "0xFF00000000000000000000000000000000000000000000000000000000000000",
//!         "0x00FF000000000000000000000000000000000000000000000000000000000000"
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
//!           "caller": "0xef1d6db5525b7953bf0b23db999927e93cd9cec2"
//!         }
//!       ],
//!       "expected": [
//!         "0xFF00000000000000000000000000000000000000000000000000000000000000",
//!         "0x01FF000000000000000000000000000000000000000000000000000000000000"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_value",
//!       "inputs": [
//!         {
//!           "method": "overwrite",
//!           "calldata": [
//!             "0",
//!             "13482894893289489238489829389489238489284892388292332",
//!             "0xFF"
//!           ],
//!           "caller": "0xa6ce0165f01fccb751c401f1bcbb2f96c522c88a"
//!         }
//!       ],
//!       "expected": [
//!         "0x0000000000000000000024095EFD136928AD0DD5540CA95A20796621785CF6EC",
//!         "0xFF00000000000000000000000000000000000000000000000000000000000000"
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
//!           "caller": "0x067552d1be7a0a5266d11565e7138d8c165cad02"
//!         }
//!       ],
//!       "expected": [
//!         "0x00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!         "0xFF00000000000000000000000000000000000000000000000000000000000000"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(uint256 key, uint256 value) external pure returns(uint256) {
        assembly {
            mstore(key, value)
            return(key, 32)
        }
    }

    function overwrite(uint256 key, uint256 value, uint8 beforeValue) external pure returns(uint256) {
        assembly {
            let offset := sub(key, gt(key, 0))
            let len := add(33, gt(key, 0))
            for { let i := 0 } lt(i, len) { i := add(i, 1) }
            {
                mstore8(add(offset, i), beforeValue)
            }
            mstore(key, value)
            return(offset, len)
        }
    }
}
