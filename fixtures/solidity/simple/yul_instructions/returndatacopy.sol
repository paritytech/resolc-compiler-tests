//! {
//!   "cases": [
//!     {
//!       "name": "zero_to",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "17",
//!             "233",
//!             "300",
//!             "0xAA",
//!             "1"
//!           ],
//!           "caller": "0x2327e5165eecf8f4a93b518a2132b333daae8c88"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "one_to",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "32",
//!             "128",
//!             "160",
//!             "0xFF",
//!             "1"
//!           ],
//!           "caller": "0x0c1cc1ca653dcbdb3451451e92516cfe050e5e84"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "small_ordinar_to",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "19",
//!             "0",
//!             "32",
//!             "33",
//!             "0",
//!             "1"
//!           ],
//!           "caller": "0x5e1b735c5e3bf6f2b9d33449de532e2ce758f12a"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "word_to",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "32",
//!             "272",
//!             "17",
//!             "500",
//!             "0xDE",
//!             "1"
//!           ],
//!           "caller": "0xe1953e339ba7ddf5bbe450d75b2bb0e3f1353fd8"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_to",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "2383",
//!             "122",
//!             "2383",
//!             "2560",
//!             "0x44",
//!             "1"
//!           ],
//!           "caller": "0x009cfebab1cc20d08e23eb7ea89dcefab3349e45"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_words_to",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xF100",
//!             "64",
//!             "100",
//!             "164",
//!             "0xFF",
//!             "1"
//!           ],
//!           "caller": "0x906bf5e0fa8b707eb1f9acb2bc667382d8ad88b3"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "big_ordinar_to",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFAA",
//!             "32",
//!             "32",
//!             "0",
//!             "0",
//!             "0"
//!           ],
//!           "caller": "0x0076b4a5b50842e97c78ee23001c135fcac1fc51"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_64_to",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFC0",
//!             "322",
//!             "333",
//!             "10",
//!             "0xFF",
//!             "0"
//!           ],
//!           "caller": "0x6f5e587143addd91e1523847130b2457f3aff7e8"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_63_to",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFC1",
//!             "0",
//!             "512",
//!             "4",
//!             "0xBB",
//!             "0"
//!           ],
//!           "caller": "0xcf2a6713eb29ac5b680f0e753aec39d9378b7366"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_ordinar_between_32_64_to",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFCF",
//!             "1",
//!             "1",
//!             "52",
//!             "52",
//!             "0"
//!           ],
//!           "caller": "0x16e0a1974b70d13aeac4403df21002a7fc33009c"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_33_to",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFDF",
//!             "0",
//!             "1",
//!             "48",
//!             "0xC8",
//!             "0"
//!           ],
//!           "caller": "0xd21a19f33fc3f868e331721a783cf9e24df2d200"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_32_to",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFE0",
//!             "55",
//!             "64",
//!             "32",
//!             "0",
//!             "0"
//!           ],
//!           "caller": "0x43cc2f5fcefbb73bfa56347154d77b204adf1157"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_31_to",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFE1",
//!             "1",
//!             "17",
//!             "3",
//!             "3",
//!             "0"
//!           ],
//!           "caller": "0xa4b0a3bf1440da0ab808e1136b34fc67be097773"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_ordinar_to",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFEF",
//!             "5",
//!             "1",
//!             "128",
//!             "0xFF",
//!             "0"
//!           ],
//!           "caller": "0x998f33276ca43e851e98fd1be04898c72bc2d7dd"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_one_to",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFFF",
//!             "17",
//!             "55",
//!             "222",
//!             "0xAA",
//!             "0"
//!           ],
//!           "caller": "0x3604cd5372ddad2fdaf9e2e28599f072e5b82a6d"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_to",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0x100000000",
//!             "256",
//!             "32",
//!             "256",
//!             "12",
//!             "0"
//!           ],
//!           "caller": "0xbeea87e3d14392b659c0a9561a7cd87d7fe04d39"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "ordinar_bigger_2_in_32_to",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "3334353453452342342354355544445321191012012",
//!             "32",
//!             "1",
//!             "1",
//!             "0x55",
//!             "0"
//!           ],
//!           "caller": "0xb4dbd27882833766cc0aa2a11b3d59dde27d18e6"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "max_to",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "100",
//!             "96",
//!             "0",
//!             "0",
//!             "0"
//!           ],
//!           "caller": "0x709d177b323090849f93d266a76bd5db8376faa3"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "zero_from",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "17",
//!             "0",
//!             "233",
//!             "300",
//!             "0xAA",
//!             "1"
//!           ],
//!           "caller": "0x47674f7679bbbd92e7b4dd00f2f8477dafa74b9d"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "one_from",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "32",
//!             "1",
//!             "128",
//!             "160",
//!             "0xFF",
//!             "1"
//!           ],
//!           "caller": "0x8a3f6ffb0157c316195675417b7d9b34739d475b"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "small_ordinar_from",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "19",
//!             "32",
//!             "51",
//!             "0",
//!             "1"
//!           ],
//!           "caller": "0xc19e4255030363d36d5c00d6ea532c31cfe51fa3"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "word_from",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "272",
//!             "32",
//!             "17",
//!             "500",
//!             "0xDE",
//!             "1"
//!           ],
//!           "caller": "0xd4c5940172379b41a43d39b98ad7c5a472553356"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_from",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "122",
//!             "2383",
//!             "2383",
//!             "5800",
//!             "0x44",
//!             "1"
//!           ],
//!           "caller": "0xf933690ed77aff478f29d8593900eb375b966de3"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_words_from",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "64",
//!             "0xF100",
//!             "100",
//!             "0xF180",
//!             "0xFF",
//!             "1"
//!           ],
//!           "caller": "0x8f2e10473d7aa89ece48234c2856a340d26c0be7"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "big_ordinar_from",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "32",
//!             "0xFFFFFFAA",
//!             "32",
//!             "0",
//!             "0",
//!             "0"
//!           ],
//!           "caller": "0x91e2bfd61303c992512f728eb3045b3262ce7021"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_64_from",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "322",
//!             "0xFFFFFFC0",
//!             "333",
//!             "10",
//!             "0xFF",
//!             "0"
//!           ],
//!           "caller": "0x7c57d912ad91feb0fc5ad36a91aa2760963316e1"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_63_from",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "0xFFFFFFC1",
//!             "512",
//!             "4",
//!             "0xBB",
//!             "0"
//!           ],
//!           "caller": "0xede3ce2de34abb54db56799a04d42a48cdc23a05"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_ordinar_between_32_64_from",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "0xFFFFFFCF",
//!             "1",
//!             "52",
//!             "52",
//!             "1"
//!           ],
//!           "caller": "0xd7132e9749d95075c617c5b93a3b2165fae6e9c6"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_33_from",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "0xFFFFFFDF",
//!             "1",
//!             "48",
//!             "0xC8",
//!             "1"
//!           ],
//!           "caller": "0xb60257c89c362bdb8b25d010eaec9299c323ad38"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_32_from",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "55",
//!             "0xFFFFFFE0",
//!             "64",
//!             "32",
//!             "0",
//!             "0"
//!           ],
//!           "caller": "0xee5372a3415bb5980f3e7579dafa324eaa075969"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_31_from",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "0xFFFFFFE1",
//!             "17",
//!             "3",
//!             "3",
//!             "0"
//!           ],
//!           "caller": "0x78a99e5e437c1abefb72934079c8fd213e479a40"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_ordinar_from",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "5",
//!             "0xFFFFFFEF",
//!             "1",
//!             "128",
//!             "0xFF",
//!             "0"
//!           ],
//!           "caller": "0xd280bb5651c030b9495abeed96d1f350d21fa86a"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_one_from",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "17",
//!             "0xFFFFFFFF",
//!             "55",
//!             "222",
//!             "0xAA",
//!             "0"
//!           ],
//!           "caller": "0xfc43e26b50b8ea216cbeb229fec21c61dc530384"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_from",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "256",
//!             "0x100000000",
//!             "32",
//!             "256",
//!             "12",
//!             "0"
//!           ],
//!           "caller": "0xa71df7dd52d496d28da5790ab42882780a55a334"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "ordinar_bigger_2_in_32_from",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "32",
//!             "3334353453452342342354355544445321191012012",
//!             "1",
//!             "1",
//!             "0x55",
//!             "0"
//!           ],
//!           "caller": "0x73ba8d422411a3203901d062be17347f668d9b96"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "max_from",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "100",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "96",
//!             "0",
//!             "0",
//!             "0"
//!           ],
//!           "caller": "0x79076ef74cd1183b10373fa9147e039c00f43c75"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "zero_size",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "17",
//!             "233",
//!             "0",
//!             "300",
//!             "0xAA",
//!             "1"
//!           ],
//!           "caller": "0x4f7c4fffe0618abd91016a4ce1f74e2248d6447b"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "one_size",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "128",
//!             "32",
//!             "160",
//!             "0xFF",
//!             "1"
//!           ],
//!           "caller": "0xeb693631758bc5b023a9a465bdc6ce4ef048d84d"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "small_ordinar_size",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "32",
//!             "19",
//!             "51",
//!             "0",
//!             "1"
//!           ],
//!           "caller": "0xf26871f48f52c2bac0a534757839859eefd7bf37"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "word_size",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "272",
//!             "17",
//!             "32",
//!             "500",
//!             "0xDE",
//!             "1"
//!           ],
//!           "caller": "0xcbc9405e7e01f56ace24ab74d1b425d250b18ff0"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_size",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "122",
//!             "2383",
//!             "2383",
//!             "5800",
//!             "0x44",
//!             "1"
//!           ],
//!           "caller": "0x6a74cf7e6199b1d1e7abbb92b5bc761b6ff40b12"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_words_size",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "64",
//!             "100",
//!             "0xF100",
//!             "0xF180",
//!             "0xFF",
//!             "1"
//!           ],
//!           "caller": "0xe697e8ad3613557d467540d20db2a14f3a56786c"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "big_ordinar_size",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "32",
//!             "32",
//!             "0xFFFFFFAA",
//!             "0",
//!             "0",
//!             "0"
//!           ],
//!           "caller": "0xe3c173a3c83d47766cf727fdeae0343cd566b89e"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_64_size",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "322",
//!             "333",
//!             "0xFFFFFFC0",
//!             "10",
//!             "0xFF",
//!             "0"
//!           ],
//!           "caller": "0x433c8789ebf436111a65bd0f8c2ee078c13537b7"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_63_size",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "512",
//!             "0xFFFFFFC1",
//!             "4",
//!             "0xBB",
//!             "0"
//!           ],
//!           "caller": "0xd52de19927010a9f4741cb49028b0044450e9c6e"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_ordinar_between_32_64_size",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "1",
//!             "0xFFFFFFCF",
//!             "52",
//!             "52",
//!             "1"
//!           ],
//!           "caller": "0xdaf52f175be352cfe9034bf24990367a3dabeb07"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_33_size",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "1",
//!             "0xFFFFFFDF",
//!             "48",
//!             "0xC8",
//!             "1"
//!           ],
//!           "caller": "0x6fdb90d27838a0d41013ba74fbc86cfb73f9dfdc"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_32_size",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "55",
//!             "64",
//!             "0xFFFFFFE0",
//!             "32",
//!             "0",
//!             "0"
//!           ],
//!           "caller": "0x1c28d24aa423ead74f894e82dd82e3815aaa16b0"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_31_size",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "17",
//!             "0xFFFFFFE1",
//!             "3",
//!             "3",
//!             "0"
//!           ],
//!           "caller": "0x24134855c3cb02c677ba6cad4a2ba3be13448aa3"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_ordinar_size",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "5",
//!             "1",
//!             "0xFFFFFFEF",
//!             "128",
//!             "0xFF",
//!             "0"
//!           ],
//!           "caller": "0x426bf7afe5b43973e851b58e783175e6a5abc508"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_one_size",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "17",
//!             "55",
//!             "0xFFFFFFFF",
//!             "222",
//!             "0xAA",
//!             "0"
//!           ],
//!           "caller": "0x6afd8396419b90faf9a10a026a51da5fa6cdbcec"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_size",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "256",
//!             "32",
//!             "0x100000000",
//!             "256",
//!             "12",
//!             "0"
//!           ],
//!           "caller": "0xe8fac1ab2eaf8a974c0cf54121436ca345f3c9c0"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "ordinar_bigger_2_in_32_size",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "32",
//!             "1",
//!             "3334353453452342342354355544445321191012012",
//!             "1",
//!             "0x55",
//!             "0"
//!           ],
//!           "caller": "0x9649d8502e198658472396737f98896979b0b337"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "max_size",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "100",
//!             "96",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "0",
//!             "0",
//!             "0"
//!           ],
//!           "caller": "0x1bc43abd598ddc3d8d0401d74f5fafdb0884b439"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "too_small_size",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "64",
//!             "100",
//!             "100",
//!             "199",
//!             "0xFF",
//!             "0"
//!           ],
//!           "caller": "0xe809583cad37b64ddf6eb75548dbb192dec82353"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "big_from_zero_size",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "32",
//!             "45678765435678987654323456789834765434567890",
//!             "0",
//!             "32",
//!             "0xAA",
//!             "1"
//!           ],
//!           "caller": "0xcdeced64c223d495e162c9a8107ed21d77d60bbf"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "initial",
//!       "inputs": [
//!         {
//!           "method": "initial",
//!           "calldata": [
//!             "222",
//!             "12",
//!             "100"
//!           ],
//!           "caller": "0xb2e251e388046226e55c1fbf1ebaa74664d1b642"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "overwrite_bigger",
//!       "inputs": [
//!         {
//!           "method": "overwrite",
//!           "calldata": [
//!             "32",
//!             "1",
//!             "128",
//!             "117",
//!             "0xAA",
//!             "256",
//!             "0xFF"
//!           ],
//!           "caller": "0x9ee346dae27ca20741ecffe035d453eb914423f0"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "overwrite_same_size",
//!       "inputs": [
//!         {
//!           "method": "overwrite",
//!           "calldata": [
//!             "32",
//!             "0",
//!             "32",
//!             "33",
//!             "1",
//!             "33",
//!             "0xAB"
//!           ],
//!           "caller": "0x50e5afb720059de7ff41669974db6f2f9705f20d"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "overwrite_smaller",
//!       "inputs": [
//!         {
//!           "method": "overwrite",
//!           "calldata": [
//!             "0",
//!             "20",
//!             "128",
//!             "160",
//!             "0xFF",
//!             "147",
//!             "0"
//!           ],
//!           "caller": "0x48982ead8a62b54175708ef3a81b191b4c29f354"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0;

contract Test {
    function main(uint256 to, uint256 from, uint256 len, uint256 returndata_len, uint8 val, bool check) external returns(uint256, uint256, uint256) {
        assembly {
            mstore(0, returndata_len)
            mstore(32, val)
            pop(call(gas(), address(), 0, 0, 64, 0, 0))

            returndatacopy(to, from, len)

            if gt(check, 0) {
                for { let i := 0 } lt(i, len) { i := add(i, 1) }
                {
                    if iszero(eq(
                        shr(248, mload(add(to, i))),
                        val
                    )) {
                        mstore(0, 0)
                        return(0, 32)
                    }
                }
            }

            mstore(0, 1)
            return(0, 32)
        }
    }

    function initial(uint256 to, uint256 from, uint256 len) external returns(uint256 result) {
        assembly {
            returndatacopy(to, from, len)

            for { let i := 0 } lt(i, len) { i := add(i, 1) }
            {
                if iszero(eq(
                    shr(248, mload(add(to, i))),
                    0
                )) {
                    mstore(0, 0)
                    return(0, 32)
                }
            }

            mstore(0, 1)
            return(0, 32)
        }
    }

    function overwrite(
        uint256 to,
        uint256 from,
        uint256 len,

        uint256 returndata_len1,
        uint8 val1,

        uint256 returndata_len2,
        uint8 val2
    ) external returns(uint256 result) {
        assembly {
            mstore(0, returndata_len1)
            mstore(32, val1)
            pop(call(gas(), address(), 0, 0, 64, 0, 0))


            mstore(0, returndata_len2)
            mstore(32, val2)
            pop(call(gas(), address(), 0, 0, 64, 0, 0))

            returndatacopy(to, from, len)

            for { let i := 0 } lt(i, len) { i := add(i, 1) }
            {
                if iszero(eq(
                    shr(248, mload(add(to, i))),
                    val2
                )) {
                    mstore(0, 0)
                    return(0, 32)
                }
            }

            mstore(0, 1)
            return(0, 32)
        }
    }

    fallback() external {
        assembly {
            let len := calldataload(0)
            let val := calldataload(32)
            for { let i := 0 } lt(i, len) { i := add(i, 1) }
            {
                mstore8(i, val)
            }
            return(0, len)
        }
    }
}