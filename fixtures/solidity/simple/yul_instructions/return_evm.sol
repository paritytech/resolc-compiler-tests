//! {
//!   "targets": [
//!     "evm"
//!   ],
//!   "cases": [
//!     {
//!       "name": "zero_zero",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0",
//!             "0"
//!           ],
//!           "caller": "0xc390d992897a91727a4e7580ab42063a4d1c9181"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "zero_one",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0",
//!             "1"
//!           ],
//!           "caller": "0xa4598be6ece1fc3a142540287b984477da89544b"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "zero_small_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0",
//!             "19"
//!           ],
//!           "caller": "0xcc2e9816fd6c82479393699282e8c4292d16dba1"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "zero_word",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0",
//!             "32"
//!           ],
//!           "caller": "0x1c4777d721fdb0c6aa85e0d44c49ac46ce4c1731"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "zero_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0",
//!             "2383"
//!           ],
//!           "caller": "0x74fe4cb3ea4cc0e55ad2826574c9e486e19a5fba"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "zero_ordinar_words",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0",
//!             "0xF100"
//!           ],
//!           "caller": "0x1993f1046368717265cdf0ab7568f7635c39c7dd"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "zero_big_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0",
//!             "0xFFFFFFAA"
//!           ],
//!           "caller": "0xd0771ba08f8462e6bb6f5d30fdc2a74ee7d21beb"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "zero_2_in_32_minus_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0",
//!             "0xFFFFFFE0"
//!           ],
//!           "caller": "0xb23ae95495ff68773d9c585027abf8db7f9eb6f3"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "zero_2_in_32_minus_31",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0",
//!             "0xFFFFFFE1"
//!           ],
//!           "caller": "0xf97976b87f7dc892512cb30b84f9dce2afa45f59"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "zero_2_in_32_minus_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0",
//!             "0xFFFFFFEF"
//!           ],
//!           "caller": "0x4d104bd9a1c0c8b42be4db62e3b3a1d6aee2c63e"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "zero_2_in_32_minus_one",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0",
//!             "0xFFFFFFFF"
//!           ],
//!           "caller": "0xa7df941928219c8c84960f64ba135b2c1b655be2"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "zero_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0",
//!             "0x100000000"
//!           ],
//!           "caller": "0x78d1ebdd938d820addaf0422bf4da7d33d7310f5"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "zero_ordinar_bigger_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0",
//!             "3334353453452342342354355544445321191012012"
//!           ],
//!           "caller": "0x3a58eda1460b952ade03d61f0c63f81ce8163104"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "zero_max",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0xdd371bc3594e563fe520f6ff3a7f88cbbcdbec84"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "one_zero",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "1",
//!             "0"
//!           ],
//!           "caller": "0x536862c8657e313244c18b814229ca8aba7f201c"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "one_one",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "1",
//!             "1"
//!           ],
//!           "caller": "0x1e8cd2a8a7bc36eb660ddf18d333d103d9d8f306"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "one_small_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "1",
//!             "19"
//!           ],
//!           "caller": "0xb0b3a06d7e8396318956dff3250f0aaa971841bc"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "one_word",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "1",
//!             "32"
//!           ],
//!           "caller": "0xcfdc1d19cc9dd64e349c8c80b4f98243c1e3561b"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "one_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "1",
//!             "2383"
//!           ],
//!           "caller": "0x9c7248767b2e5211483ec585d4bd751a0ea55d87"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "one_ordinar_words",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "1",
//!             "0xF100"
//!           ],
//!           "caller": "0x8032f42390131985925283a6bbf5746105b3f807"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "one_big_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "1",
//!             "0xFFFFFFAA"
//!           ],
//!           "caller": "0xb371cc464cc56247a578a66b98c1c9e830dcb2e7"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "one_2_in_32_minus_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "1",
//!             "0xFFFFFFE0"
//!           ],
//!           "caller": "0xf06e34c2ace86565c2187b7fa3e4ccb89ef7f6dc"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "one_2_in_32_minus_31",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "1",
//!             "0xFFFFFFE1"
//!           ],
//!           "caller": "0xc432ef23edab44ff60d8c057567ac8a168cb0075"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "one_2_in_32_minus_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "1",
//!             "0xFFFFFFEF"
//!           ],
//!           "caller": "0xf708aeee036fca502cc070bd6b844e0a082ce16f"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "one_2_in_32_minus_one",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "1",
//!             "0xFFFFFFFF"
//!           ],
//!           "caller": "0x1f1a5d27163b8f8d7190f87bf3ab40463cf65b5b"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "one_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "1",
//!             "0x100000000"
//!           ],
//!           "caller": "0x5c83d914d02bdc67b2bd040d6cdc162825f74d17"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "one_ordinar_bigger_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "1",
//!             "3334353453452342342354355544445321191012012"
//!           ],
//!           "caller": "0x726df7552ba6edc38c1ef7c07ce63fb0836da010"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "one_max",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "1",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0x9d632cd3a04380cd37e1fd3b526ffe948010bc4e"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "small_ordinar_zero",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "8",
//!             "0"
//!           ],
//!           "caller": "0x864f253950d41e9212d657903e940b048cc887d8"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "small_ordinar_one",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "8",
//!             "1"
//!           ],
//!           "caller": "0xcfe115e8a3c5a7a71fb7e4c8b7152cc63aaa9861"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "small_ordinar_small_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "8",
//!             "19"
//!           ],
//!           "caller": "0xd36aab638fee459dd7adbac4e16eab7af0532c5c"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "small_ordinar_word",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "8",
//!             "32"
//!           ],
//!           "caller": "0xaaca948f8a839f80a107ad69430cbd9d3d78f7f2"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "small_ordinar_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "8",
//!             "2383"
//!           ],
//!           "caller": "0x7138afbf552d17b39d49a9551b2da0e0ff28a9f3"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "small_ordinar_ordinar_words",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "8",
//!             "0xF100"
//!           ],
//!           "caller": "0x6f4db722f1a981d5bec3babcd1b74d5c69090877"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "small_ordinar_big_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "8",
//!             "0xFFFFFFAA"
//!           ],
//!           "caller": "0xe05fba8f479ce55e574c4c51091f8073c8c51dac"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "small_ordinar_2_in_32_minus_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "8",
//!             "0xFFFFFFE0"
//!           ],
//!           "caller": "0x0cf22cf314f3d08b7e6c6b6c0b683b522bb5e0d2"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "small_ordinar_2_in_32_minus_31",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "8",
//!             "0xFFFFFFE1"
//!           ],
//!           "caller": "0xe9183f0751baf90b2d23ec9ee619653b65af8b8a"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "small_ordinar_2_in_32_minus_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "8",
//!             "0xFFFFFFEF"
//!           ],
//!           "caller": "0x35f66004bcd07f84c8347c8be34fd0d5335ecdbf"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "small_ordinar_2_in_32_minus_one",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "8",
//!             "0xFFFFFFFF"
//!           ],
//!           "caller": "0xc925b50b7eede609f0bc1f0860becbf18b762ff6"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "small_ordinar_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "8",
//!             "0x100000000"
//!           ],
//!           "caller": "0x6597c277344b92ce7c7a00306697dc295fe913b9"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "small_ordinar_ordinar_bigger_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "8",
//!             "3334353453452342342354355544445321191012012"
//!           ],
//!           "caller": "0x5554b6ebd706594707328bca978aa664fb894a0a"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "small_ordinar_max",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "8",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0x9600cf662f629bf226de471b94705d53e4e9feed"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "word_zero",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "32",
//!             "0"
//!           ],
//!           "caller": "0x49c91775cecd340cf80af12d0502595dd500b14d"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "word_one",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "32",
//!             "1"
//!           ],
//!           "caller": "0x46d688e540fa076db5f2d45b407730315961707a"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "word_small_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "32",
//!             "19"
//!           ],
//!           "caller": "0x36d77243793225bdc83c7408754a64bc062f3fab"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "word_word",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "32",
//!             "32"
//!           ],
//!           "caller": "0xcb8ce729e946565622c067592aed59b7b3c1f9df"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "word_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "32",
//!             "2383"
//!           ],
//!           "caller": "0x09c7ad26c6981675c5a746be19d9a0122dd24734"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "word_ordinar_words",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "32",
//!             "0xF100"
//!           ],
//!           "caller": "0x4ec613897473d46080fef28d317b244717bff577"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "word_big_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "32",
//!             "0xFFFFFFAA"
//!           ],
//!           "caller": "0x0b8c7dc947b4433bae5bf04e3550659894e6e3c3"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "word_2_in_32_minus_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "32",
//!             "0xFFFFFFE0"
//!           ],
//!           "caller": "0x4f13490dc3d12ae0c6e326fb9a42b9baba39ae72"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "word_2_in_32_minus_31",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "32",
//!             "0xFFFFFFE1"
//!           ],
//!           "caller": "0x701e200c1eb19442bce4cae6a6258cdc2abc558c"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "word_2_in_32_minus_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "32",
//!             "0xFFFFFFEF"
//!           ],
//!           "caller": "0x85a241bc9e68b27f172da76c7dcac8144b1108a3"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "word_2_in_32_minus_one",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "32",
//!             "0xFFFFFFFF"
//!           ],
//!           "caller": "0x472d92de17557363f938d5ba522d15d65db2309d"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "word_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "32",
//!             "0x100000000"
//!           ],
//!           "caller": "0x4a4547136a017c665fcedcdddca9dfd6d7dbc77f"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "word_ordinar_bigger_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "32",
//!             "3334353453452342342354355544445321191012012"
//!           ],
//!           "caller": "0x16068726298f9111bb04e2a9ddb12102a194ddc2"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "word_max",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "32",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0xaad786334e07baba9bc378cec91c5c87791e8472"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_zero",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "421587",
//!             "0"
//!           ],
//!           "caller": "0xaf6ebf973f4758468a7570073b3d7d76957d4760"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "ignore": true,
//!       "comment": "On Geth this returns 0 instead of 0xdeadbeef on E-, E+, Y- and Y+ modes, so ignoring for now",
//!       "name": "ordinar_one",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "421587",
//!             "1"
//!           ],
//!           "caller": "0xf58ba6ca7e48842bcb2784193be0262af687dd81"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_small_ordinar",
//!       "modes": [
//!         "E-"
//!       ],
//!       "comment": "This test fails in all other modes for some reason that we need to understand and investigate",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "421587",
//!             "19"
//!           ],
//!           "caller": "0xcbe5a09c092ec9d0a87073280528f493a5240ef9"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_word",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "421587",
//!             "32"
//!           ],
//!           "caller": "0x3a019d82f6c9b775aaa30b2ae0a962cef3e0a33d"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "421587",
//!             "2383"
//!           ],
//!           "caller": "0x255e49759ac1675dd616403219336a2c4047dba2"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_words",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "421587",
//!             "0xF100"
//!           ],
//!           "caller": "0xcde01ffd309cb033e764a983e3dd680988781816"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_big_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "421587",
//!             "0xFFFFFFAA"
//!           ],
//!           "caller": "0x53ea689b93dbdd1218dbf8dfee522ef45d39337c"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_2_in_32_minus_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "421587",
//!             "0xFFFFFFE0"
//!           ],
//!           "caller": "0x6eee2ffa5ba6cddf3926c07afaa023457ab4f5e0"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_2_in_32_minus_31",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "421587",
//!             "0xFFFFFFE1"
//!           ],
//!           "caller": "0xc194b393ab5ec485756de3aff929078d39ac4ad9"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_2_in_32_minus_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "421587",
//!             "0xFFFFFFEF"
//!           ],
//!           "caller": "0xcd8e684d2508398e7e8822cd6c39edaa89032695"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_2_in_32_minus_one",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "421587",
//!             "0xFFFFFFFF"
//!           ],
//!           "caller": "0x809365a1cd0155f3d8c936b85b706d39734642de"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "421587",
//!             "0x100000000"
//!           ],
//!           "caller": "0x38ff1c9ae22f878d8662d8180e1d0d1738b21a18"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_bigger_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "421587",
//!             "3334353453452342342354355544445321191012012"
//!           ],
//!           "caller": "0x0c2ce915950f5a8b3460cfc5032329f1fdd82573"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_max",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "421587",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0x2aa80e48b1fc48fb38322901b40086c0b5faf904"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_words_zero",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xF100",
//!             "0"
//!           ],
//!           "caller": "0x8c6018bdfcd19efaf70edae8b8f467d62d1841af"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_words_one",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xF100",
//!             "1"
//!           ],
//!           "caller": "0xf4257274cbdd852b999f77f0952af53cca3f65b3"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_words_small_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xF100",
//!             "19"
//!           ],
//!           "caller": "0x812bb77aed55770d908fe4e05639c199263a7d64"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_words_word",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xF100",
//!             "32"
//!           ],
//!           "caller": "0xb59073bb51c9d82178575c23b72292e85ba9655e"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_words_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xF100",
//!             "2383"
//!           ],
//!           "caller": "0xc0b755faf6d84cb2ee8d73cb0ef24442e9ef51d8"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_words_ordinar_words",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xF100",
//!             "0xF100"
//!           ],
//!           "caller": "0x340f026aa8e5fceb149455871554512b058b925c"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_words_big_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xF100",
//!             "0xFFFFFFAA"
//!           ],
//!           "caller": "0x02ba49fc4a66e70e3c76fc8acbc21a5f8f3c0eca"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_words_2_in_32_minus_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xF100",
//!             "0xFFFFFFE0"
//!           ],
//!           "caller": "0xb4909509df7c52412cf3123d38264339b64a614e"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_words_2_in_32_minus_31",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xF100",
//!             "0xFFFFFFE1"
//!           ],
//!           "caller": "0x49f0c9332a2f5ba50fd64ae26ea760bb9a85d811"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_words_2_in_32_minus_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xF100",
//!             "0xFFFFFFEF"
//!           ],
//!           "caller": "0xa2dcc6419db88ebcf045ffa840b407c176c5c27d"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_words_2_in_32_minus_one",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xF100",
//!             "0xFFFFFFFF"
//!           ],
//!           "caller": "0x2eca9c8a30f88b36da58509b13fc333f7dbce1f7"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_words_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xF100",
//!             "0x100000000"
//!           ],
//!           "caller": "0x3466143ed7c18ad42f2573fe6fa08fbc7f75e1ba"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_words_ordinar_bigger_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xF100",
//!             "3334353453452342342354355544445321191012012"
//!           ],
//!           "caller": "0xb9db0570f5da8fe0cb9c6a6cb5033b24b28ad7ae"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_words_max",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xF100",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0xc42782a0feb451f453699e5cb2a216a4d4a2c6fc"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "big_ordinar_zero",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFAA",
//!             "0"
//!           ],
//!           "caller": "0x09d00011e8eb3d6cf80a6f96b84bb15df73b29aa"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "big_ordinar_one",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFAA",
//!             "1"
//!           ],
//!           "caller": "0xcd947d0173152875de8cc8242aae7026efddde73"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "big_ordinar_small_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFAA",
//!             "19"
//!           ],
//!           "caller": "0x2f4727b75cb5d86933fbe791addc9a0f9fc847f6"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "big_ordinar_word",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFAA",
//!             "32"
//!           ],
//!           "caller": "0xdea799cd9df2dffeed1b397725169e5d271bf6cd"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "big_ordinar_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFAA",
//!             "2383"
//!           ],
//!           "caller": "0x1a47353386798bc5f03794aebead8a02574c926d"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "big_ordinar_ordinar_words",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFAA",
//!             "0xF100"
//!           ],
//!           "caller": "0xd710040c7d6dfc9260cb1a4d485b7bfcfff41771"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "big_ordinar_big_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFAA",
//!             "0xFFFFFFAA"
//!           ],
//!           "caller": "0xe7e3e0b72c916c1ece5462919cdc04d51337e4f5"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "big_ordinar_2_in_32_minus_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFAA",
//!             "0xFFFFFFE0"
//!           ],
//!           "caller": "0xb4979117056105d391d4cd4bf1964e091965af0a"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "big_ordinar_2_in_32_minus_31",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFAA",
//!             "0xFFFFFFE1"
//!           ],
//!           "caller": "0x5eaeef6b44287845bd93c250043856f3a5c583eb"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "big_ordinar_2_in_32_minus_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFAA",
//!             "0xFFFFFFEF"
//!           ],
//!           "caller": "0xce8dc6a2a12afedc07b0474639d1f91a91a0716e"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "big_ordinar_2_in_32_minus_one",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFAA",
//!             "0xFFFFFFFF"
//!           ],
//!           "caller": "0xef66a266c1723302e8f71f6193903348c26d2656"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "big_ordinar_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFAA",
//!             "0x100000000"
//!           ],
//!           "caller": "0x398dd1cbe11e1af8b07594b561a84b2c76b60c09"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "big_ordinar_ordinar_bigger_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFAA",
//!             "3334353453452342342354355544445321191012012"
//!           ],
//!           "caller": "0xdef2eda008368f68b3f6a3eef2b4654a1e52c5ab"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "big_ordinar_max",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFAA",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0xdbc285ddec8ee485b1e16d2a5396779ace62462b"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_32_zero",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFE0",
//!             "0"
//!           ],
//!           "caller": "0xc86208ffc0dae838399cf446bf2b33695d612483"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_32_one",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFE0",
//!             "1"
//!           ],
//!           "caller": "0xc49bedf635a5eda6c17cc712eab4e895f67aee64"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_32_small_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFE0",
//!             "19"
//!           ],
//!           "caller": "0xb3ef3790b5aa61de676e38e69e3bfe42a215eb18"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_32_word",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFE0",
//!             "32"
//!           ],
//!           "caller": "0xf1040b7ef1a3998ab8698b4c8831b7032886bc49"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_32_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFE0",
//!             "2383"
//!           ],
//!           "caller": "0x1968f1c20f1e66c93bae4a01687c9d8ccb6541ea"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_32_ordinar_words",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFE0",
//!             "0xF100"
//!           ],
//!           "caller": "0x43af70861a33476699d1402b445fef3e89992b11"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_32_big_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFE0",
//!             "0xFFFFFFAA"
//!           ],
//!           "caller": "0x278b4e7764780caa633ce85792de9be0b6d2d766"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_32_2_in_32_minus_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFE0",
//!             "0xFFFFFFE0"
//!           ],
//!           "caller": "0xa6d4af0cd340509dd72b6616d361a3e644f79594"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_32_2_in_32_minus_31",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFE0",
//!             "0xFFFFFFE1"
//!           ],
//!           "caller": "0xd2b91583f13aa8c6c09e4046c6351ab282993f14"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_32_2_in_32_minus_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFE0",
//!             "0xFFFFFFEF"
//!           ],
//!           "caller": "0x2d03dc285632412031e9181a3067cdd0430f3e07"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_32_2_in_32_minus_one",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFE0",
//!             "0xFFFFFFFF"
//!           ],
//!           "caller": "0xabe234ab2e92f44ed492796e7361f9f82db46b17"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_32_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFE0",
//!             "0x100000000"
//!           ],
//!           "caller": "0x35016bcb2a4598c9fcefae1043ddb19f06524c83"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_32_ordinar_bigger_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFE0",
//!             "3334353453452342342354355544445321191012012"
//!           ],
//!           "caller": "0x6a0c4e0eeefecfb6ad565c5ece7c05b7e80e6482"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_32_max",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFE0",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0x8396023743893c3b953bd6fe642504e08bea8d07"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_31_zero",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFE1",
//!             "0"
//!           ],
//!           "caller": "0xd7102defade65a3f998edf27f36a8fe1ba546d27"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_31_one",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFE1",
//!             "1"
//!           ],
//!           "caller": "0xed1a52ab4b237ec8105bfc614731f34f9e503df7"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_31_small_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFE1",
//!             "19"
//!           ],
//!           "caller": "0xbd395f14438dad9164eda475f90bad8a7cecff73"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_31_word",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFE1",
//!             "32"
//!           ],
//!           "caller": "0xde25f6c5779f4a77ec732cea7321179347d5efb2"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_31_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFE1",
//!             "2383"
//!           ],
//!           "caller": "0x554a39899f6980b64ca6a5db850d56f8ca492b8b"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_31_ordinar_words",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFE1",
//!             "0xF100"
//!           ],
//!           "caller": "0xbf14493f034fdda59d0169b09f96e845cb91c466"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_31_big_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFE1",
//!             "0xFFFFFFAA"
//!           ],
//!           "caller": "0x1b6b39f6e4ba2147851bcc2b2fe4ad0da732139d"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_31_2_in_32_minus_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFE1",
//!             "0xFFFFFFE0"
//!           ],
//!           "caller": "0x70381ffafb326e8089a896a3c7e5059eb0b95a70"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_31_2_in_32_minus_31",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFE1",
//!             "0xFFFFFFE1"
//!           ],
//!           "caller": "0x751ff08c2deae017f90b2000f18547f704e8bcdc"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_31_2_in_32_minus_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFE1",
//!             "0xFFFFFFEF"
//!           ],
//!           "caller": "0x7f29d7a44d74ec751e3d7b3bcf8068fe8a8ee293"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_31_2_in_32_minus_one",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFE1",
//!             "0xFFFFFFFF"
//!           ],
//!           "caller": "0x9faefc1fc4b0d6e62f97c036d9f0fd1eb70a31d6"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_31_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFE1",
//!             "0x100000000"
//!           ],
//!           "caller": "0x4d160877868974cc86d4d1bf8aa24cf2f8bbd825"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_31_ordinar_bigger_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFE1",
//!             "3334353453452342342354355544445321191012012"
//!           ],
//!           "caller": "0xed3ada53cb67de4b475e5aa42a0120a22c797790"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_31_max",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFE1",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0x371d50facfeb6245a2538a05ae5f4b4ca91d36c2"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_ordinar_zero",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFEF",
//!             "0"
//!           ],
//!           "caller": "0x7d4f4a7863d301b8619a9e361b37a9bad5c21a0c"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_ordinar_one",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFEF",
//!             "1"
//!           ],
//!           "caller": "0x644954a27e51897e904fce5c7dc35a73f4d5cc89"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_ordinar_small_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFEF",
//!             "19"
//!           ],
//!           "caller": "0xab6868453223e89eab148a68eb8ca7efd1436d6f"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_ordinar_word",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFEF",
//!             "32"
//!           ],
//!           "caller": "0xb9dcc00792e7b4416fd71c3de1932da16c274a16"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_ordinar_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFEF",
//!             "2383"
//!           ],
//!           "caller": "0xd68e9265501faa62052a9bf0ca5b54b533928f6a"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_ordinar_ordinar_words",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFEF",
//!             "0xF100"
//!           ],
//!           "caller": "0xae11e319c0f82c1c7767b4ad49a5c749fbb3b64c"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_ordinar_big_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFEF",
//!             "0xFFFFFFAA"
//!           ],
//!           "caller": "0xcca4d1ba4707e32854cf074cf6812f927c02ac16"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_ordinar_2_in_32_minus_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFEF",
//!             "0xFFFFFFE0"
//!           ],
//!           "caller": "0xcaee5f3aefb65f9654f3d37d873e115d4158f663"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_ordinar_2_in_32_minus_31",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFEF",
//!             "0xFFFFFFE1"
//!           ],
//!           "caller": "0x9c660e45ad7759e7276687484af56e7295ce17eb"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_ordinar_2_in_32_minus_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFEF",
//!             "0xFFFFFFEF"
//!           ],
//!           "caller": "0x3e7da63c37fc4c3eae648be8ea97f6e534bf108c"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_ordinar_2_in_32_minus_one",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFEF",
//!             "0xFFFFFFFF"
//!           ],
//!           "caller": "0xc643f6b8e064976132b3d3c184fd0632809daaa7"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_ordinar_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFEF",
//!             "0x100000000"
//!           ],
//!           "caller": "0xccdfcd404af52f5007b8bf5d3eb895bd3d98dbb8"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_ordinar_ordinar_bigger_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFEF",
//!             "3334353453452342342354355544445321191012012"
//!           ],
//!           "caller": "0x66a949a7fe6118df841dae7d2469b2c0260680d8"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_ordinar_max",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFEF",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0xa5f0f99fe1521b46b61c09d9ebcdac0b97d0908f"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_one_zero",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFFF",
//!             "0"
//!           ],
//!           "caller": "0xd9351b6f52ca054b6f8787c06278c742fd1b726f"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_one_one",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFFF",
//!             "1"
//!           ],
//!           "caller": "0xa16b0eaaf5bf990a70b5c8d4a9d04f1cca116777"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_one_small_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFFF",
//!             "19"
//!           ],
//!           "caller": "0x86ecf8c299a727b96f4109ef367c61920da27f77"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_one_word",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFFF",
//!             "32"
//!           ],
//!           "caller": "0xe16b320a6ab56c055f7e26f73790b093a6288b22"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_one_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFFF",
//!             "2383"
//!           ],
//!           "caller": "0x026467628ba42dc41b78a70e3f4b458ef38ac804"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_one_ordinar_words",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFFF",
//!             "0xF100"
//!           ],
//!           "caller": "0x7e7fa2ad9f2d9f1a85259035d93efa3b78470d25"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_one_big_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFFF",
//!             "0xFFFFFFAA"
//!           ],
//!           "caller": "0x6722f5c57ff3eeac17702e61e74dc84d1c0d8771"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_one_2_in_32_minus_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFFF",
//!             "0xFFFFFFE0"
//!           ],
//!           "caller": "0xbc255470e8174c5e82df2cb4b3e9d5f9ca6da8f4"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_one_2_in_32_minus_31",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFFF",
//!             "0xFFFFFFE1"
//!           ],
//!           "caller": "0x40af577267ce17221cfbb164a77b6fefe86cdef0"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_one_2_in_32_minus_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFFF",
//!             "0xFFFFFFEF"
//!           ],
//!           "caller": "0x8295f3cc1e771fc4067a93a805f4be01369bb097"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_one_2_in_32_minus_one",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFFF",
//!             "0xFFFFFFFF"
//!           ],
//!           "caller": "0x4ba6c5f2cce51d4c6a62eaec9254995c8f3fe5bf"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_one_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFFF",
//!             "0x100000000"
//!           ],
//!           "caller": "0x723375cd93ffd7c5626cab66a5b359599a028487"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_one_ordinar_bigger_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFFF",
//!             "3334353453452342342354355544445321191012012"
//!           ],
//!           "caller": "0x96166a4a6aa40f2d34df67e38829e2532baac4cf"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_one_max",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFFF",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0x2754a25b9d755990bd4b8744286f0a69ce8a4987"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_zero",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0x100000000",
//!             "0"
//!           ],
//!           "caller": "0xd1e826a8b74334b441f1616d73c316d735161eba"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_one",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0x100000000",
//!             "1"
//!           ],
//!           "caller": "0x9fb0851ae5e48fd0b7a6d22f7be573954290ddbf"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_small_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0x100000000",
//!             "19"
//!           ],
//!           "caller": "0xe435781170a18fc54a58dae9459d1e26ab844f9f"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_word",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0x100000000",
//!             "32"
//!           ],
//!           "caller": "0x8ea4aaf457bf323815701a0b33641f9a62989925"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0x100000000",
//!             "2383"
//!           ],
//!           "caller": "0x344c2a11e3e57720865dc242c71bde27eb938b9b"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_ordinar_words",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0x100000000",
//!             "0xF100"
//!           ],
//!           "caller": "0x529403f98e0c5fecd433bd65e86c6a1a9b7aa39b"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_big_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0x100000000",
//!             "0xFFFFFFAA"
//!           ],
//!           "caller": "0xdc3f28791cba0963c569986c7dc5cb33c205b0cc"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_2_in_32_minus_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0x100000000",
//!             "0xFFFFFFE0"
//!           ],
//!           "caller": "0x9f8e2b85d53b5749e817e2415f5f2d3b87717638"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_2_in_32_minus_31",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0x100000000",
//!             "0xFFFFFFE1"
//!           ],
//!           "caller": "0x6662def813ec1f421a41390183aa8a06d16bba3e"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_2_in_32_minus_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0x100000000",
//!             "0xFFFFFFEF"
//!           ],
//!           "caller": "0x6c6acd0b5373ed4c5a55b52ca607a256c7a09805"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_2_in_32_minus_one",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0x100000000",
//!             "0xFFFFFFFF"
//!           ],
//!           "caller": "0x2ccb26528af82334edec241584bcae64f0061a78"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0x100000000",
//!             "0x100000000"
//!           ],
//!           "caller": "0x54da432e71d8a26bb11ba92334cca0d4290908fb"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_ordinar_bigger_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0x100000000",
//!             "3334353453452342342354355544445321191012012"
//!           ],
//!           "caller": "0x0a43077507e8b364138d4bfb7a7b85667075344b"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_max",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0x100000000",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0xe0513bd8e403e646d92c0f66c7d325db5d3fba0e"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_bigger_2_in_32_zero",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "3334353453452342342354355544445321191012012",
//!             "0"
//!           ],
//!           "caller": "0x98c96e681944b661d99a8c6c8d2e23f09d1b499d"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_bigger_2_in_32_one",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "3334353453452342342354355544445321191012012",
//!             "1"
//!           ],
//!           "caller": "0xc4f43656bec0e89970123c6edadf21bd643a1f9c"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_bigger_2_in_32_small_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "3334353453452342342354355544445321191012012",
//!             "19"
//!           ],
//!           "caller": "0xad1aeeb07d5c1da3f9673a6be934ffeb159ef88f"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_bigger_2_in_32_word",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "3334353453452342342354355544445321191012012",
//!             "32"
//!           ],
//!           "caller": "0x024c8dd125ce7025cc68da9130f101891eb0e3ec"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_bigger_2_in_32_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "3334353453452342342354355544445321191012012",
//!             "2383"
//!           ],
//!           "caller": "0x35b810f22395be8661654fde09ae0231e759677e"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_bigger_2_in_32_ordinar_words",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "3334353453452342342354355544445321191012012",
//!             "0xF100"
//!           ],
//!           "caller": "0xb0bce20a5805c1da2f997503f7c0971d71f56071"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_bigger_2_in_32_big_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "3334353453452342342354355544445321191012012",
//!             "0xFFFFFFAA"
//!           ],
//!           "caller": "0xe9dbbae34b8750f3ba52b7319d4573f3f3e1956d"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_bigger_2_in_32_2_in_32_minus_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "3334353453452342342354355544445321191012012",
//!             "0xFFFFFFE0"
//!           ],
//!           "caller": "0xce83b9e39ac0b61e453d903108aa3d79e155b164"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_bigger_2_in_32_2_in_32_minus_31",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "3334353453452342342354355544445321191012012",
//!             "0xFFFFFFE1"
//!           ],
//!           "caller": "0xc2834bd3d52721f234b55fd00b60477efc4afabd"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_bigger_2_in_32_2_in_32_minus_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "3334353453452342342354355544445321191012012",
//!             "0xFFFFFFEF"
//!           ],
//!           "caller": "0xad831b2fa4f3da494de0ba49d5da1494e8285cc9"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_bigger_2_in_32_2_in_32_minus_one",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "3334353453452342342354355544445321191012012",
//!             "0xFFFFFFFF"
//!           ],
//!           "caller": "0xdf095457d9793531c6ebc9ee4fbd5a0053bd3c17"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_bigger_2_in_32_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "3334353453452342342354355544445321191012012",
//!             "0x100000000"
//!           ],
//!           "caller": "0xde077ddca0a2d7af79303cc89554f17af2dfe870"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_bigger_2_in_32_ordinar_bigger_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "3334353453452342342354355544445321191012012",
//!             "3334353453452342342354355544445321191012012"
//!           ],
//!           "caller": "0x18aa8a4381090e7fc2c3b985ead20fc194725b1f"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_bigger_2_in_32_max",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "3334353453452342342354355544445321191012012",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0x1345d64f0efe655fecb19bc8fb2b0f3af4e5c0d8"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "max_zero",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "0"
//!           ],
//!           "caller": "0xc4e4314b258268e348ec7a77f4c382cbbb5851ba"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "max_one",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "1"
//!           ],
//!           "caller": "0xc1f3076b10330b729aba4c5921b5a2e43300b287"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "max_small_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "19"
//!           ],
//!           "caller": "0x3e0c4d7d3e9bd3169700cba874f613b5902f07e6"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "max_word",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "32"
//!           ],
//!           "caller": "0xe4a09dae3f2994b2d173e1d5d4b68896a7ba0baf"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "max_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "2383"
//!           ],
//!           "caller": "0x98aefa865e9e7d1bffa35f7cf23a2582dbbbd236"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "max_ordinar_words",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "0xF100"
//!           ],
//!           "caller": "0x3034bd774587068a03f65cf4c96a53d4365294a4"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "max_big_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "0xFFFFFFAA"
//!           ],
//!           "caller": "0x3d4559fa72cc4f3d52af46984e71bfa8885a84b5"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "max_2_in_32_minus_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "0xFFFFFFE0"
//!           ],
//!           "caller": "0xac8060ad1dd83600eca7354fc69c3743c9b92fee"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "max_2_in_32_minus_31",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "0xFFFFFFE1"
//!           ],
//!           "caller": "0x728a622778f567db1554ad121a4066e62925fd4d"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "max_2_in_32_minus_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "0xFFFFFFEF"
//!           ],
//!           "caller": "0x9b4fe8400530aec2c9db758195e355f8b37d921b"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "max_2_in_32_minus_one",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "0xFFFFFFFF"
//!           ],
//!           "caller": "0x9821d24af0dd88ae2a655e247e5ec673c8aa2f8e"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "max_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "0x100000000"
//!           ],
//!           "caller": "0x13943a2e84e66a28fff57641cf769361f410c0c1"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "max_ordinar_bigger_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "3334353453452342342354355544445321191012012"
//!           ],
//!           "caller": "0x260976edd64d602989e7df01b2860f4b15432402"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "max_max",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0xdd42c68c3691b3404048184305bbf3b94c22b870"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "one_value_one_len",
//!       "inputs": [
//!         {
//!           "method": "test_with_value",
//!           "calldata": [
//!             "0",
//!             "1",
//!             "1"
//!           ],
//!           "caller": "0x9560f7abe4273db58d46a86ee3a6ac517c1eec62"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "one_value_small_ordinar_len",
//!       "inputs": [
//!         {
//!           "method": "test_with_value",
//!           "calldata": [
//!             "123122",
//!             "19",
//!             "1"
//!           ],
//!           "caller": "0xdd5b4bde87bec3e239a39d819da8541d06373f8d"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "one_value_word_len",
//!       "inputs": [
//!         {
//!           "method": "test_with_value",
//!           "calldata": [
//!             "12",
//!             "32",
//!             "1"
//!           ],
//!           "caller": "0xe7208f83c462d6d9ddae6e14354efaa227bcf749"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "one_value_ordinar_len",
//!       "inputs": [
//!         {
//!           "method": "test_with_value",
//!           "calldata": [
//!             "1024",
//!             "2383",
//!             "1"
//!           ],
//!           "caller": "0x771e93b5684982f79f37ded988448ecb3a3047d5"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "one_value_ordinar_words_len",
//!       "inputs": [
//!         {
//!           "method": "test_with_value",
//!           "calldata": [
//!             "1",
//!             "0xF100",
//!             "1"
//!           ],
//!           "caller": "0x4fd94b9ae3c72f0495c37dd53c96ec9acadef9e8"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_value_one_len",
//!       "inputs": [
//!         {
//!           "method": "test_with_value",
//!           "calldata": [
//!             "0",
//!             "1",
//!             "0xA1"
//!           ],
//!           "caller": "0x0555cfb52fb0934e2419ab8cdb3a1e868e85f939"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_value_small_ordinar_len",
//!       "inputs": [
//!         {
//!           "method": "test_with_value",
//!           "calldata": [
//!             "123122",
//!             "19",
//!             "0x44"
//!           ],
//!           "caller": "0xd1ad7c258f5bc8eed7ae4b72d699dad18be6bc8f"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_value_word_len",
//!       "inputs": [
//!         {
//!           "method": "test_with_value",
//!           "calldata": [
//!             "12",
//!             "32",
//!             "0xE6"
//!           ],
//!           "caller": "0x59e76cd4ca62ee6cb693482a2b707dcd7ee2d3e4"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_value_ordinar_len",
//!       "inputs": [
//!         {
//!           "method": "test_with_value",
//!           "calldata": [
//!             "1024",
//!             "2383",
//!             "0xD5"
//!           ],
//!           "caller": "0x7ea8b16e4217593e36634eb2410fbf9687e1e930"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_value_ordinar_words_len",
//!       "inputs": [
//!         {
//!           "method": "test_with_value",
//!           "calldata": [
//!             "1",
//!             "0xF100",
//!             "0x82"
//!           ],
//!           "caller": "0x15447d67283eae63be7d0a6dc5d59b8dd4225146"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "max_value_one_len",
//!       "inputs": [
//!         {
//!           "method": "test_with_value",
//!           "calldata": [
//!             "0",
//!             "1",
//!             "0xFF"
//!           ],
//!           "caller": "0x563bd9e11d18b6ea60c2f159f8d3062d30e8039e"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "max_value_small_ordinar_len",
//!       "inputs": [
//!         {
//!           "method": "test_with_value",
//!           "calldata": [
//!             "123122",
//!             "19",
//!             "0xFF"
//!           ],
//!           "caller": "0xe74198b655a01e8e41160c33c20a13b2bf50b493"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "max_value_word_len",
//!       "inputs": [
//!         {
//!           "method": "test_with_value",
//!           "calldata": [
//!             "12",
//!             "32",
//!             "0xFF"
//!           ],
//!           "caller": "0xafbba70d6d7aadfa5ee6a713a8b2de7b2da274fc"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "max_value_ordinar_len",
//!       "inputs": [
//!         {
//!           "method": "test_with_value",
//!           "calldata": [
//!             "1024",
//!             "2383",
//!             "0xFF"
//!           ],
//!           "caller": "0x214c185c0afeb5071a1255d01a8606f80d79e4c6"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "max_value_ordinar_words_len",
//!       "inputs": [
//!         {
//!           "method": "test_with_value",
//!           "calldata": [
//!             "1",
//!             "0xF100",
//!             "0xFF"
//!           ],
//!           "caller": "0xefa6bf8b7462e17428f62b53b81414053ac0fbda"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.21;

// TODO: enable some cases with zero sizes after the VM fix
contract Test {
    function test(uint256 offset, uint256 len) external {
        assembly {
            mstore(0, 0xcc572cf9) // main selector
            mstore(32, offset)
            mstore(64, len)
            let success := call(gas(), address(), 0, 28, 68, 0, 0)

            mstore(0, success)
            returndatacopy(32, 0, returndatasize())
            if iszero(success) {
                return(0, add(returndatasize(), 32))
            }

            if iszero(eq(len, returndatasize())) {
                return(0, add(returndatasize(), 32))
            }

            for {
                let i := 0
            } lt(i, len) {
                i := add(i, 1)
            } {
                if iszero(eq(shr(248, mload(add(i, 32))), 0)) {
                    return(0, add(returndatasize(), 32))
                }
            }

            // return some magic value in a success case
            mstore(0, 0xdeadbeef)
            return(0, 32)
        }
    }

    function test_with_value(uint256 offset, uint256 len, uint8 val) external {
        assembly {
            mstore(0, 0xc9b9b445) // with_value selector
            mstore(32, offset)
            mstore(64, len)
            mstore(96, val)
            let success := call(gas(), address(), 0, 28, 100, 32, len)

            mstore(0, success)
            if iszero(success) {
                return(0, add(returndatasize(), 32))
            }

            if iszero(eq(len, returndatasize())) {
                return(0, add(returndatasize(), 32))
            }

            for {
                let i := 0
            } lt(i, len) {
                i := add(i, 1)
            } {
                if iszero(eq(shr(248, mload(add(i, 32))), val)) {
                    return(0, add(returndatasize(), 32))
                }
            }

            // return some magic value in a success case
            mstore(0, 0xdeadbeef)
            return(0, 32)
        }
    }

    function main(uint256 offset, uint256 len) external pure {
        assembly {
            // nullify memory ptr slot
            mstore(0x40, 0)
            return(offset, len)
        }
    }

    function with_value(uint256 offset, uint256 len, uint8 val) external pure {
        assembly {
            for {
                let i := 0
            } lt(i, len) {
                i := add(i, 1)
            } {
                mstore8(add(offset, i), val)
            }
            return(offset, len)
        }
    }
}
