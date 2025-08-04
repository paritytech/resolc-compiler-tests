//! {
//!   "targets": [
//!     "eravm"
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
//!           "caller": "0x9dFa88D2c73125f1E730d305e64f3890DdD34837"
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
//!           "caller": "0x5404384c3952402ea4Aea084ebE86002F800a8Fb"
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
//!           "caller": "0x87F71c67030A1CC266d51993f74AFc33e471d51d"
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
//!           "caller": "0x61d6CB54820103960a554F40273294DaFAfb186D"
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
//!           "caller": "0xCd5177fE8664530A044B49C0E8D820D3c0237920"
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
//!           "caller": "0x77419582E546018739d612Fc781B914df6064E56"
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
//!           "caller": "0x3EC9f0a157F3E659a436DD067645C1774ff818cD"
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
//!           "caller": "0x8F1eE1669EeA80fB036e8521C5c73d8c33A1ae06"
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
//!           "caller": "0xf66671ef5c2B8E0a3EEad3330D2d960AdF35a3f1"
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
//!           "caller": "0xf0FDc51b10b37639280b4b4D366fb6aC250E49E4"
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
//!           "caller": "0x877c87c177Dfe0505308cD205375595b6aca283E"
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
//!           "caller": "0x13CB77CFe7f22fA1d319e06dADf41A5777eC6864"
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
//!           "caller": "0x3C3b8Ab0bdB3A2A040cf25b1b4caC857Bf39E84d"
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
//!           "caller": "0xbFB37780891318Ad60b9f7985AB34b4Dc7afCe45"
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
//!           "caller": "0xC3f2274C3Cf6Cc2fcC008E7c5e271Fa565F84022"
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
//!           "caller": "0xbff2DE54794394E10e8E599C10dC204c1EB7121a"
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
//!           "caller": "0x4A301ABf78a1e8E784f4feA10D162961a6413baA"
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
//!           "caller": "0x2Aa826c183DEDa49Df30aa856C81912AC8Fd7Ff3"
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
//!           "caller": "0x8B7eFdf5401486168B5a412E1CA060215b990De1"
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
//!           "caller": "0x58CF3dF03183D7939d7Bc59fE26C502114aEb173"
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
//!           "caller": "0x121823b2eFEA8c15ba0ecFf95B291Db8C451a023"
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
//!           "caller": "0xED0b704Bd88C4f94C97bA2D9482Ada98C292af13"
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
//!           "caller": "0xD1a033824CDf6aF89fCc1a6897c9837F54a6DA2F"
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
//!           "caller": "0xdE0f0b7340bA864aEd6D3B2E96Ab9E4e72f06143"
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
//!           "caller": "0xC9b400BA82B2EB6126F343ed15F44BDF7397FBb6"
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
//!           "caller": "0x88f65113012db7d31ADD169e882DE5d578bc6651"
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
//!           "caller": "0x07bb51dB376167eC056ac705a9931F1948E4dff4"
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
//!           "caller": "0xc10e5bCd89C269Fe0D569abeba947964d2054Cd7"
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
//!           "caller": "0x5104E7E7CEa6D3bb8A19D2C96d556712ef426B32"
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
//!           "caller": "0xE8b2F7855F6DC671A06bB89fE9702F7d2A6dF4f8"
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
//!           "caller": "0x187D72aB2F0d94673D493E2dF9E92c5841516B4C"
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
//!           "caller": "0xdCbF59928F6BfA4Ee3bedA6dDaD0D56EBA0D54e0"
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
//!           "caller": "0x41a34D2bc37d6B97ff61082bE581DF6AfAf60B58"
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
//!           "caller": "0x59A9fF44e0c9A58f44F1dA3BC4dCB5daDE82CFf6"
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
//!           "caller": "0x371622BC00c6898f7De0F148169E1DE046607081"
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
//!           "caller": "0x9B633eD54aBbE3De66896EAAF394F5BaF1107f85"
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
//!           "caller": "0x14ddAD156f556ae675a05eecfc13CD4dD9BAb3D9"
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
//!           "caller": "0x1dE61d4404Ea1e9AB58aEB87a56a93E1cD39BfCb"
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
//!           "caller": "0xabEE15a3620050b0e3Deae75893C2e1757A25448"
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
//!           "caller": "0x00cAbfA732f26d4584C52a7F7dbb17Ac6dCFB4e8"
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
//!           "caller": "0xFAd91aE054ABbdAB4d021107313CC25674B8c518"
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
//!           "caller": "0x3bC16Ccf4e4A8E721Dd6Eb48d5F46b0D6C874bB5"
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
//!           "caller": "0xfC7Fce5B3cDfBd6Ed8757f4d030FAc3267Da5F4D"
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
//!           "caller": "0xf03DcAFC51a7403EFF161AB3035d6cB773C616C6"
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
//!           "caller": "0x6Ba56b5166Fe7e89390689041a2645e5fE0c3D77"
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
//!           "caller": "0x7Ab5Ee55F569B8a2Ac3b9f8335a52c4963A0258b"
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
//!           "caller": "0x22803815d9ddEcB147684d15AD5d55eFaF9dDcf1"
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
//!           "caller": "0x62aa601F64e21A27c33679db9e0F56BB9cBe552a"
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
//!           "caller": "0xb6e3C77E3774Afa1397C45BD23e0e4Cd70e8247f"
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
//!           "caller": "0x8dDe1f3a1418FB03b644a0dCA6B34a97eceC7D1E"
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
//!           "caller": "0x0fADa039F475D4b144de863425CC3713EeEF2eFe"
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
//!           "caller": "0xAdC12A118a6de7E8B6D34e01320D03bEEA307031"
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
//!           "caller": "0x4605E4EA20C99C44A2acf3b5f1a8e6B2702d1E89"
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
//!           "caller": "0xAD0547F371128320d3bE74ee6d2CFf98d2267541"
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
//!           "caller": "0xA1BD06798934eFc32E040d2791462F364ef77a00"
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
//!           "caller": "0xeF4F3588f9A964F46A55024585D7e33461b5a22C"
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
//!           "caller": "0xd0fE7185bd3e3E9cCF7cF0b02c2DE78Cf6C2353f"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_one",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "421587",
//!             "1"
//!           ],
//!           "caller": "0x78f0a0856A52BC8A6EC73c7d45FB450543E87705"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_small_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "421587",
//!             "19"
//!           ],
//!           "caller": "0x473607fAa7FF67Fe6c694a5f0Af97406c102D872"
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
//!           "caller": "0xec19D59D178380372bC333eE56682f395B79A381"
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
//!           "caller": "0x52B4a73883bB486a7269eDa28633b2B34Ca1894a"
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
//!           "caller": "0xD4fc2415Af69a9bdB90017eD2C81a87Cf7e8c616"
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
//!           "caller": "0x1998ec10CB284625f37EAeE99e028b224104B04a"
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
//!           "caller": "0x8C27F70eaad90b6cd815a550f239EbE626f4478a"
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
//!           "caller": "0xAfca4d9EFa219bd20e6073b6cDacfcdc78620040"
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
//!           "caller": "0x9BB8B6d101ff6bb1B12711c93129253307ECC98f"
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
//!           "caller": "0x622a0895D4096F7f4061Bb009709ED3FF12ED0fc"
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
//!           "caller": "0x75B74E3880A9D839108a5e6A7b1e7A729507ea7f"
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
//!           "caller": "0xfb6F3c632BB7432a5E3F1637153FFEd108518cb7"
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
//!           "caller": "0x9b90B7A46Ba1BF5517b9796956ef0F02398F8e79"
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
//!           "caller": "0x6e181Dab586C8deE21ac32D2C16a4C88109d6A94"
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
//!           "caller": "0xf26F094d207556a686660Fc406c0CA5B8D982BE0"
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
//!           "caller": "0x82c21419eeC1Cc3255f2202Bbdf0589651f62047"
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
//!           "caller": "0x8912F556fAe2cBD2F648699202dd36E02438cbF3"
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
//!           "caller": "0x8065438cb0d668562461C46d412DA4442C1349d0"
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
//!           "caller": "0x169893a2291beF38aD71EA80e1491aCfBF4Ca3eC"
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
//!           "caller": "0xB07ad284BEC3018b704677044AFcD9Bfa8f82D29"
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
//!           "caller": "0xaD402f1009B8Cb38CEdb71630e90Ab96E6E5EaB5"
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
//!           "caller": "0x6170ebb188A6C3B985864798F0F67220E0ff5C26"
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
//!           "caller": "0xfeE2915A4C6F96dF7fac60a757F9e53768C8c390"
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
//!           "caller": "0xedce6E2A357A3800B374C1bB1146775b23083e48"
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
//!           "caller": "0xB2bEaE34940441d741A37AEB3CA562c3a275BBFe"
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
//!           "caller": "0xB2Bde67CBC2BB162F19C98cFacA791a0e93F437F"
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
//!           "caller": "0xaa13fCc7f9744F642F400041e30068512F7969C1"
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
//!           "caller": "0x8d4ac67141D48336bEb841903E5F3937dd03bADd"
//!         }
//!       ],
//!       "expected": [
//!         "0"
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
//!           "caller": "0x3dB4A12d1f0ddbDE0505Eb3cB96b92B35C6CE126"
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
//!           "caller": "0xC5771bCd1834DE77eEf4159d4aF3Ba8e94915cFC"
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
//!           "caller": "0x504204B0715B3C6Dd6b0328CD170426384CE474f"
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
//!           "caller": "0xac0141052101e3B58172719feFA6b2C9519f2b1b"
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
//!           "caller": "0x330B6e23EC96379B3e162Dedd57bEBA42021ed5e"
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
//!           "caller": "0x58A8044bb2780771c0fC7e9Abe826ed6363d7390"
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
//!           "caller": "0x23bafe431cF4E21d0CaDf7C07288d1CC3266343e"
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
//!           "caller": "0x3ea05917AA8C549f122cB478a9E52B99804e838F"
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
//!           "caller": "0xc7148c3408299e67C57AB20130b10eFe5D407aCC"
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
//!           "caller": "0x7D86Ba0599AA14133bD0A63cfE4bFF990485c188"
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
//!           "caller": "0xb565FB025D8e9d298E61f42abc95DE579741358f"
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
//!           "caller": "0x012Cb9078D2C194af630B6865717c3c2EbF2ca62"
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
//!           "caller": "0x3E9be1ee4dD6413f8255Af43D57F6b1cfDB59DF4"
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
//!           "caller": "0x2e302FF025cC822d8E4Be3991CE8C2049887f78e"
//!         }
//!       ],
//!       "expected": [
//!         "0"
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
//!           "caller": "0xB30d706B76d4FABd8444F5b2762945FcE5B21897"
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
//!           "caller": "0xF464E96E9a55c4DA4D70845Ab8826529877ebBf5"
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
//!           "caller": "0x7C979857d6260D13Ea279Fa6d289A1874a993241"
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
//!           "caller": "0x2202b5b35D2eEFfB63D192aF104E1adbBB4beb89"
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
//!           "caller": "0x014F1dFDa5aD7ecC7C1e4605E6a930d4150EA5F4"
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
//!           "caller": "0xE28f93109bF779E7C36D51752997DF634C0A3dF4"
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
//!           "caller": "0x52A8eDE567673C4fE6aDd59ec011322050C71A2b"
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
//!           "caller": "0x325f807b1b29380Ca04B3247a96dFA15dD086309"
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
//!           "caller": "0x52738bA76c58A4b09f41E3A3DaB49d4EfAD54c98"
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
//!           "caller": "0x9b6Bab82C1704359962142A06998A05c6be126Da"
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
//!           "caller": "0x725Ea13721dceC56a70CB22ABB9606aBE3B8F6B8"
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
//!           "caller": "0xF78B10726FE71E5e33162B482542B84F32c5fA21"
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
//!           "caller": "0xFEE20751c4De208216eB22eF78c50037630bF345"
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
//!           "caller": "0x1f0dA7F1fB232A3c2d365CD426Cc4fc39561D8E5"
//!         }
//!       ],
//!       "expected": [
//!         "0"
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
//!           "caller": "0x188fff65Fd03d813cd1DAa03DBeaD64F4c6a0e42"
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
//!           "caller": "0xEb382A27F4769D00994228DF7b6765956156a7e8"
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
//!           "caller": "0xD0c97338d8D1510d7Cda136A9d4f0bF6F0159F6D"
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
//!           "caller": "0x827935C6d878BC6998E03410Ea8D52358Ac39FE4"
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
//!           "caller": "0x839eA65C47fEe6e715Ce24DD1b3A9CCe3BF90380"
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
//!           "caller": "0x4f635f6fe454E20175AaD4046726d45E675719A8"
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
//!           "caller": "0x74a9161E71241390929Be821d42Fd78116Da5dB5"
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
//!           "caller": "0xC9E6045F65b277bc1217668f047108E7456b1548"
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
//!           "caller": "0x2F4d1e049C375974A619A6B0929083e6Da45Af74"
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
//!           "caller": "0x6F025E2732E570b948382Ded29c2cAe303b851B9"
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
//!           "caller": "0x524408aeb114F1922779418Dd644E75b4e89254b"
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
//!           "caller": "0x39bA537f941c799735C7CACA4f8aa53CA05446E6"
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
//!           "caller": "0x7Bc30aDD54e77a9CC486a6D5cFCEB720569Ec65b"
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
//!           "caller": "0xbC42669E1a2d32f70014B546c3A6f181C3dB5ba5"
//!         }
//!       ],
//!       "expected": [
//!         "0"
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
//!           "caller": "0xd50c42338124e6D0Edb99E0136b2A22CA10778Cb"
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
//!           "caller": "0x917Bf90BD2410f60ED0820E50Be253ac88F90536"
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
//!           "caller": "0x563fEb2193468E585d7e445843A23209deE21175"
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
//!           "caller": "0x56bCf4CC80B56BBC18d3618265f3234047E32eC0"
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
//!           "caller": "0xB1de0b07c20e4B5516B395f7EE0bE38fFd1ee210"
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
//!           "caller": "0xffbE53766D0d0E7417bA56bA2f3d84B4CAB91b10"
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
//!           "caller": "0x411427E3fE9c124e294F26DCd828fB3b5B52473d"
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
//!           "caller": "0x75874e1Cf96384129444A92Aa2b5A01311DFda5C"
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
//!           "caller": "0x299647C69b7dAEd459cdF79d0f5752f81BC3c033"
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
//!           "caller": "0x8003ea8673C4A17f8203b6efE3FF0D2c19367195"
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
//!           "caller": "0x5C8B8577916FC442b2E869A0dA13Bb6B0b3a06Eb"
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
//!           "caller": "0x8cCf3B015606470a11811EfB71C658164EED0128"
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
//!           "caller": "0x794dDf42b71F30624Cf580929a4112E1c315a708"
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
//!           "caller": "0x8bC6D7dc78775990F0C50808E41D831161C32EE4"
//!         }
//!       ],
//!       "expected": [
//!         "0"
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
//!           "caller": "0xc0eC93e3381636923930a686d991DbE96149c60c"
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
//!           "caller": "0x3261bd971cc6813EF90EaA91B806a2b5059836FA"
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
//!           "caller": "0x03fB20D36594D1ee50910705fE94C95a44584A75"
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
//!           "caller": "0x899154CBAe4131e216c594E41fe494155736a941"
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
//!           "caller": "0x6Ce3e0c9Df26Ea5d1274C2F7a0eb0A3854426e05"
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
//!           "caller": "0x51146380692Aaf18f450CAfa1969485F63886e21"
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
//!           "caller": "0xF0929b2eb84A17fb519F55beA79b9884f027d7d2"
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
//!           "caller": "0xE58389d37e137FcD42d7D0180dB0CE988EB9253C"
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
//!           "caller": "0xA6af68107681fafFf224C122AB25E85ce55a59e6"
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
//!           "caller": "0x3B728068ba11E1C7d02A957F0ba2594E99E24aCe"
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
//!           "caller": "0xB55FeDAd5C8D091eCa0923b4c4396485A2723c8d"
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
//!           "caller": "0xD9F75b7c1AB2ab9054F89A10ff4cA4e9227a1492"
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
//!           "caller": "0x45d5c61010Ca22EA1b1267e9c3358966F9CfD227"
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
//!           "caller": "0x78Bac0D0FDC2eAaA22316e315aC673B6825A30a4"
//!         }
//!       ],
//!       "expected": [
//!         "0"
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
//!           "caller": "0xb8a21F3e21f06f2F0506c3de17B5941Cd8a12ac2"
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
//!           "caller": "0x68D047E43DF75c178A6D483729461d0864Bf9527"
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
//!           "caller": "0x78541b13bcc7A076417388D91cF078ac6508F302"
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
//!           "caller": "0xC3CEcC33dc3b5c152815D653Ff986d237Cd18244"
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
//!           "caller": "0x2D2A5121c2C18f498B908C21dE5777f9936C8fA8"
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
//!           "caller": "0x20576Ed06bFB483e736Ece3f562c7921c01163fa"
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
//!           "caller": "0x3a579D6806e3469d7912B6Fab790f416af32E81f"
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
//!           "caller": "0x2E6372bF29b3B1d914902e93384BccdCd1A6357c"
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
//!           "caller": "0x9bE6D658840cAE0955DE69861F73CaFF2d9B4E84"
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
//!           "caller": "0x1D81A7888286667c246006b0Ab7FDC23C834B025"
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
//!           "caller": "0xCab4683686B534436b2Eb87B345078Ab37E8b58b"
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
//!           "caller": "0x8A419178b6d1C06cCCeD32A953a23269Bf6abDfa"
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
//!           "caller": "0x66A0a8e8F60104c21cf7EE6082aE14F3e3A04f9E"
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
//!           "caller": "0x91C6f06B77Bf665989681cd9eF53222c6EC11568"
//!         }
//!       ],
//!       "expected": [
//!         "0"
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
//!           "caller": "0x03bB6976b0F91be9719711b9fC83ec82a83D6dCC"
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
//!           "caller": "0xae1F5Edba422A7472327875C9c9b8E3f8a1c0789"
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
//!           "caller": "0x48e9D0772204126D49989E0B9513BB50D2d1e16A"
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
//!           "caller": "0xe6c66872F47168aE88A1f3A62eFf0eEE8Ed602Cb"
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
//!           "caller": "0xB4A9eB2E97aa73E9e8C522db0044A0cfE0bC2bA7"
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
//!           "caller": "0xe22C5AEA4619ce754aAAab2F796375dea016df0F"
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
//!           "caller": "0x8eaC88A62EA4C157251A3f5476B89F681a97236C"
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
//!           "caller": "0x4dc0EE8fc17Ae7B54Bd45f31001408DF1240316a"
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
//!           "caller": "0x85132DE751697F787c764709A93A1145702eECaD"
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
//!           "caller": "0xEfE8dA24b2c73D512f186951dCbdF1C80Ed86Df9"
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
//!           "caller": "0xC302312D2bC57a465E3cF12Fb9F638fbE6B2Da20"
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
//!           "caller": "0xb88E9f9C85e84A0D52dEBfC56411235dAb774949"
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
//!           "caller": "0x2Dd8D636270B610B67495F34cC0007589be2c5C3"
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
//!           "caller": "0xc12c75C604E781d7cEb724Fa782Bea97A24143f3"
//!         }
//!       ],
//!       "expected": [
//!         "0"
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
//!           "caller": "0x622bD6ab4bB4FE3Be1d752cD968A022DFf0396AD"
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
//!           "caller": "0x8f71b5184B487ca2F540E0ec66BE880448b989d8"
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
//!           "caller": "0x15234736A31C2D7a35AbF6B94A5368B9f8AE531f"
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
//!           "caller": "0xd4a3bC0F2D83F29ab4DdfF9dAcEF4cDD045b4259"
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
//!           "caller": "0xD63476279E43f016469DB77882C40A5b39829F2d"
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
//!           "caller": "0x50ba4E8D2b0AEd0Bc6A7D76C1b053FcbBA6d15aD"
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
//!           "caller": "0xd44aECa63E2b9f1A25a545f1c6B1a88974B03630"
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
//!           "caller": "0x4752b08e4ADfcFA2ff8d7D031767828eE109a439"
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
//!           "caller": "0x261969B7BaD13484F8C3a122491C182C22bC5607"
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
//!           "caller": "0xBCE15065293746c3b33821EfC666eb7dE8B6Ddf7"
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
//!           "caller": "0xbB512f18fA72e2E8a851899057176492f0e033A9"
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
//!           "caller": "0xdb92ac7759FD032f70CA857c4bc8A946b452140f"
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
//!           "caller": "0x322D48979cc20258FB85727AB55F75Ab440D1E72"
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
//!           "caller": "0x35117D2528976722b911b9b73318F9BEcb2369cF"
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
//!           "caller": "0xe1f14a2FaDF0879CCDa27c2F01BA20F65Bd38395"
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
//!           "caller": "0xa35c7079da80278611d8fBdD6e38d7539453B247"
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
//!           "caller": "0xFC02ac253e762ebe90D035498ab94398564A85cA"
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
//!           "caller": "0xC29E256540ee56567FdCbc4432453e4b3014fBE1"
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
//!           "caller": "0xD572f267eA909c1B55fF0F9609BA484DE85D3746"
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
//!           "caller": "0xB9fE9D457C6F4b799d0F6124c7a70E46f3521bb2"
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
//!           "caller": "0xb6D2C66950121FC6E512D7438932dD48F3AdBDB3"
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
//!           "caller": "0x18dBa1A845c6C86395481Dc14ED79E211Bb081E5"
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
//!           "caller": "0xf4F5e483caB8617C8E6A3a2Dbd851F091532E513"
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
//!           "caller": "0xA2b678078cfe715B37b3AF20FFc109F6689019Ff"
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
//!           "caller": "0x4a698ABa2B7f8b7cb5d5480E11D8FA63DFb1D2cE"
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
//!           "caller": "0x9B8Cdb8814920DF500B967901B8707A6DB0382ec"
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
//!           "caller": "0x9901795cD41524c2aAeCeeEe2D9DB0C368BE2F15"
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
//!           "caller": "0xa7200F909BB12c9BF6644BBAa3540Ec0dc2f18A8"
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

            for { let i := 0 } lt(i, len) { i := add(i, 1) }
            {
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

            for { let i := 0 } lt(i, len) { i := add(i, 1) }
            {
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
            for { let i := 0 } lt(i, len) { i := add(i, 1) }
            {
                mstore8(add(offset, i), val)
            }
            return(offset, len)
        }
    }
}
