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
//!           "caller": "0x268F65757f80B16663CDa862868CF95D3aBC6Dc6"
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
//!           "caller": "0xeda57D677310e928dD5a1A4Aa475CF22Cd3110C1"
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
//!           "caller": "0xF20d010178B5b35C460274D9f6B516a24241f170"
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
//!           "caller": "0x5D846aB1b1Debc9BaFd904d0a5eb8D8eE6287A3E"
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
//!           "caller": "0x5f36c74033817cd73778E765b1F4f0871be42C90"
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
//!           "caller": "0x4e6Ab0D13DD6D4Bed6A71eb00A36d5C7e1FA0eC5"
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
//!           "caller": "0x10e5570b8ee00De26afD4B56C7eE6C16adEfF98A"
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
//!           "caller": "0x75d6Af59d0B777b8A3186ba31cd431D1a97Ab4C4"
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
//!           "caller": "0x1b8947409201B429Acb3A4501e167003A476cf9C"
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
//!           "caller": "0xd3C153076B6dC28a9D1b4b7a2fd41bd768F15008"
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
//!           "caller": "0x0434Dc62530C4FDb242C856703b71E2b4BEc64f2"
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
//!           "caller": "0xFA35aCb3e1514E47b1d120a6CC2284cC27876ddb"
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
//!           "caller": "0x0bB62E9227d876cf936fE5e795110FB381B80C7D"
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
//!           "caller": "0x3D8B5DE23B157e22844Ddf4C98DAae8487ad6A8C"
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
//!           "caller": "0x3B771e9768B092B6dED5e391639D0bd24dBDce27"
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
//!           "caller": "0x3DC0AaEC23989597D8020eDC0c0072Fe840Af629"
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
//!           "caller": "0x7Ac68D5CBd0e39a1D9d61A677c20Aa1CDF013808"
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
//!           "caller": "0x41F93d356cf37Ee2FE8e4F7333F48F12EFecD0cE"
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
//!           "caller": "0x93A1429E80fF147dB00D19B5bC0A789D7fFb12d0"
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
//!           "caller": "0x0A28CB585935504e9e237c7104Ba6B3cE89CC65f"
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
//!           "caller": "0x69c7Bc7403E4F0074e7C7F31A9EE7242272e29D1"
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
//!           "caller": "0x01Ecfc9C1f3ce11f621eacf722b54d82B2A5D843"
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
//!           "caller": "0x3F0AB18580776073fF4a1477435FaA02B662D2d7"
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
//!           "caller": "0x2e39c1E372b7262713EB7686CD80EA4cEDAcCBEF"
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
//!           "caller": "0x73FBCF21Ed6433337429f65E6885E798af8CDE26"
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
//!           "caller": "0x615bf815c03353ba425f067Ea219DDf2634B4ff7"
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
//!           "caller": "0xC9fF5507b058e0fAa1890d1ef327Bb8d4C24e8a7"
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
//!           "caller": "0xbDFe682D97D1c23238F5A76d29d0fbb330BFbFb0"
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
//!           "caller": "0xB2F139e5cDaE3Dd0b278125CD25b75b50F442C1C"
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
//!           "caller": "0x6C4068e2a33847Af4414eE8D1f260DD72B8dBd9e"
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
//!           "caller": "0x0bbb5160A346c1144946E4cB76759e3fe4e232e7"
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
//!           "caller": "0xA38158c8132BA23edC4f334084BF1D7bcC1059bb"
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
//!           "caller": "0x5c251E861f524A43F02105802908C930c5dd394e"
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
//!           "caller": "0xB39fD1D1a7B54FAC58E29A1A5A0e4e1a31B7860a"
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
//!           "caller": "0x318a988A25E96ce280bA2fb9B391736A21bfB6DA"
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
//!           "caller": "0x3a2b9237A2D7FF4BAC240283E56334956496189E"
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
//!           "caller": "0x545d6E242B64DCe03BcA937E5450c0D6c7635E18"
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
//!           "caller": "0x6608aCCAb779eC3fEB6fC63c144c019943cc49D2"
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
