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
//!           "caller": "0x2111E5D08513fdcF597c874Cb9D89eE50eC14ad0"
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
//!           "caller": "0x64682f331c42D7682eab748355c1e4d6e18f9bee"
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
//!           "caller": "0xE568A683d8102f4Ade5Ce6c385EBbb7B8ad58Bb8"
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
//!           "caller": "0xC9CA60551f1356cCC4204C79614255497EB31e3f"
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
//!           "caller": "0x14C7a2027255d6bbC21EE7431d50d8822195edA1"
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
//!           "caller": "0xE70f18DC84DC7EB397567bCcdBF14CC3ae32C280"
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
//!           "caller": "0xc04Ef22191738f757d1DDcb8c1749c765f191F10"
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
//!           "caller": "0xd66e3465ac79be5E2284a2888911717BEFCB938F"
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
//!           "caller": "0xF52F0908b3865dbDE06bf5A0BBf0241f09217659"
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
//!           "caller": "0x46a6bc6cBA2E9019C6EBc321FC41a843D70160fa"
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
//!           "caller": "0x4a3a1c4695265edC5De0f49F0FE6ED82E7e7D392"
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
//!           "caller": "0xC47F7b81E9100154246164a65450fAB12455e33b"
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
//!           "caller": "0xA9Cc7cd8e2739b74cd0F979aD7cc2545CAc20761"
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
//!           "caller": "0x97cDD29ffdB8267643770ffD8da61Beb8FE4b4B7"
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
//!           "caller": "0x420DDd1d1Aa0360cAf1e4483b109e9d39DF3F598"
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
//!           "caller": "0x3174d3Ec93CaE143C0E12B7aA6C961262670DfB5"
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
//!           "caller": "0xE0164F2A3221579944C38f0F1A98f98d79aAD2d1"
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
//!           "caller": "0x46678Dd29561D1045122a9Aca7e438676CE78277"
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
