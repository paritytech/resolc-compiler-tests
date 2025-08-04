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
//!           "caller": "0x71d6F4200Ff963d4F5DB7F3D0d342CC7A09644da"
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
//!           "caller": "0x057E8bbc7F2F9e132404f48790585f28DA4AB867"
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
//!           "caller": "0x81DF400B2e4CdDDC9c75BCFefC0500Eb11ca052d"
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
//!           "caller": "0x231FD6E7040c1C31e527366bdC147c30f6AC2AF1"
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
//!           "caller": "0xa36223051b849aeD9df8Ec71d0168E0E1C212b4B"
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
//!           "caller": "0x813C317ef857114E2F81F1fCB9bAAaF2bb7a3953"
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
//!           "caller": "0xD0B83fCd1F016daaeF72b42bFfb2bc33E8976523"
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
//!           "caller": "0x79e5cAC46916213fD7d636BFCD6951f78595DaAb"
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
//!           "caller": "0x5Fa385E258b9807d3eD11976Ed6d258659BfD9be"
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
//!           "caller": "0xd392A9E87B32578F697bfdc08D66bA1544C5F33B"
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
//!           "caller": "0xd9B08d50342bD6De6AD40AB6Ee448A7681A478cf"
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
//!           "caller": "0x6ACaBBfBe455422270018C188441ea3f652A97dC"
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
//!           "caller": "0x323F2cdCEE8A88C5e0278737875D79A4F01937E8"
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
//!           "caller": "0xABC090D095b62b89F5D5646450fF19ad35f53710"
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
//!           "caller": "0xA31Ad72494c7C5823F2CE3B29d0b52f3341a2444"
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
//!           "caller": "0xAF38E81E11469367595233f4eAfB2338E37aB322"
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
//!           "caller": "0xFaDdb1Ef9AcdF7daDBe6Ed8596ecd14b90373CB6"
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
//!           "caller": "0x964945038083B040806811E69bd494145bE72cE0"
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
//!           "caller": "0x6AAA89a14C137503a0C16c310c14e81Ee80C36C2"
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
//!           "caller": "0xBac702761b0F3bfCaE273f8Ad04EA22e659b4049"
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
//!           "caller": "0x06bf7939C7c00C0c77Ce4c5A14ff6efDc1EB70E0"
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
//!           "caller": "0x76E53aeB6a2d437Ef6FF14bf1fC2586ead2e9f9a"
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
//!           "caller": "0xc164e5cbF0DE94767638ADDE4f545C77f7F1Df71"
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
//!           "caller": "0x31092835612224e9Ffe9c1d9892EB5D1bC3c42AC"
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
//!           "caller": "0x27f7545bbcd52a274E2727344f059f7bE0d3b11f"
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
//!           "caller": "0xeA9569ED8C9D0c3a8B1B1a6b087FD29f0d1A409a"
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
//!           "caller": "0xa35E4a3cE26892D874D263A3671c2D4dF27a86aE"
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
//!           "caller": "0x2C90383c6104d2d8aC512Be197F69fd3cb72eB74"
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
//!           "caller": "0xC70168B9109C5cf8457FA1a915e2B6d9C74F0410"
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
//!           "caller": "0x9AaCe6A4E1154fd499C165EBC0543ABB8849B4E2"
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
//!           "caller": "0x19bF908c4927381f588190D3ef54Aa7098df8B33"
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
//!           "caller": "0xAa510B25430470432087f99e4F41223B879335af"
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
//!           "caller": "0x2419B9E8c722F9AbD9143Ee42f38dF40615a84E7"
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
//!           "caller": "0x443bDEA66abaB0881CD1CeF21dcbeCC19E44A168"
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
//!           "caller": "0x57F9814e6614063d3cE107E29bd90A8357A5f6A6"
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
//!           "caller": "0x3fdAC8f67D8c6036802B0A7c93ddE49fc34f7684"
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
//!           "caller": "0x6530c7003535D68fa015191c928d04cf42e1a882"
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
//!           "caller": "0xc9e652Ba5724821cBB8949c74d4cc313F175b0b1"
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
