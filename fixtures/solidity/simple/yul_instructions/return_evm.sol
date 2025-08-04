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
//!           "caller": "0xb77c2E8a6DF557e3b3E20d62c3ea21cB311Cd012"
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
//!           "caller": "0xfd0a38c90EB8fD6fd84dE08f01C8a719221dB49C"
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
//!           "caller": "0x6842A0116Fa58b32B8E5b843cbf48E738d1236e7"
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
//!           "caller": "0x4c62b52680c9204E6675Eef8B76782fE742417FF"
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
//!           "caller": "0x74ea1eE2a2Bf1706AaA40DD24aE9807711BdDc26"
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
//!           "caller": "0x7223Afd80367C84989Fa74F6C69dd73f2c25dafC"
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
//!           "caller": "0x75EC7dcBE92832c9282c10b79c57B1382636e0f2"
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
//!           "caller": "0xbd519c35C95eE662D7F8934c19E65b9125649446"
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
//!           "caller": "0x0a525bAADFD03f24F07fA3B6Bd858538eDD2F1AA"
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
//!           "caller": "0xD52c5f00BCad98D0671c9aFdE9693f251c2E12C2"
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
//!           "caller": "0x59ac922BC83CDD6483809282a196F3ADD07a1bb6"
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
//!           "caller": "0xDE6f9291d5a67D5Ab382A19Cd2ACEc4463aB69C7"
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
//!           "caller": "0x420c6c649389b4c236b11352880F3fa0BB882B85"
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
//!           "caller": "0x500eEfD3D453719Ba599397DA46bAAcc7588bf92"
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
//!           "caller": "0xFd2DDd6c12321B05DB280286Bad82bdC188C24aa"
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
//!           "caller": "0x5057bB2b4Bf36Ebd5362bF10202Fb4335Aab178C"
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
//!           "caller": "0x4A2d89b9bFeA7d4EC769e7b7217092759AA53C81"
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
//!           "caller": "0xBefb6C8307fc597DC415379aD3857220452F9018"
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
//!           "caller": "0xe5a08Abf837d77095A91Edc869CC3D7e4F2bEF17"
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
//!           "caller": "0xCa6a5962DF9Dc3a6d34728d25Ab968cd8d852678"
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
//!           "caller": "0x8D0B14504f2B733fdEfA0E190c6a86459AD64B16"
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
//!           "caller": "0xd4b451f45C6f77fAD352C98b7576519Ce041007B"
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
//!           "caller": "0xEAC1261741C3B21a1543971E0Eb102579Cb9C8B7"
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
//!           "caller": "0x73b571EF937Bdfd54A1de049d369f96661125aA4"
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
//!           "caller": "0x0B7B4bE81810620F55c41678F8717F408584CA6A"
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
//!           "caller": "0xD2FACb712D2A32B18D7592Da9aF1DC55CC8f87A4"
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
//!           "caller": "0x0F7d2b774Ed5A9330Fe14fFE9e9fb0f86540F5bC"
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
//!           "caller": "0x30F85Ca08606FA0E6F17921CCE3e726512a392D1"
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
//!           "caller": "0xF2488C49c9BB39b5727d524A0aE6b173f9066730"
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
//!           "caller": "0x2E927F0788b4132255Bdb1c6b57b6B948c4ac381"
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
//!           "caller": "0x610054cA0359768c7D3eEeE5db96F410D88cB77C"
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
//!           "caller": "0x25BcdAd68973D7b54F7D1D7FB30777B9f8819fa4"
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
//!           "caller": "0xAa8Ff4f89E33b7f20BbC7840Cb15BbeF76d62aBC"
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
//!           "caller": "0xe66b1c1BAAfc4D2E54c2F8F83d318b06E11E4352"
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
//!           "caller": "0xC7AB585D04D4fF671df0250CEE821BbfcD96661d"
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
//!           "caller": "0x270a2207f22159B2dA1435A1A232D6655d80ea0A"
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
//!           "caller": "0x70a82830e96DCaC2EBf32E199c6Dff3d92781D9B"
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
//!           "caller": "0x1DCb0F3c9c883f997fD97ebA567238990f5Aa2b0"
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
//!           "caller": "0x10F815390b98719e144BABdd20fc0228C07D7F9b"
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
//!           "caller": "0xD625cC8F37d72e6d1aa1a9A125aFafA45C8a7c0e"
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
//!           "caller": "0x4AEC06b85681411d96c23f59E932981A1F7de28e"
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
//!           "caller": "0x13A3D08B170B28Cd3be8bb1Df273C1F9dEe76ef6"
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
//!           "caller": "0xD5C55858b4bBa0d6395b84B5a5Fd7427E814479C"
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
//!           "caller": "0x1857d1DFE040993863b79C5bBdbB37D8eF30AEFc"
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
//!           "caller": "0x8278dcc9f2EA85c7f0DFbfE636A0C1673D17e3ec"
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
//!           "caller": "0xB0592ED753e6486Bef6bd8012d00e4A698587Fc5"
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
//!           "caller": "0x5635Ef4D08278F34EE5cFf1507f8b2Fa40DE008e"
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
//!           "caller": "0x41400471F08e9c7BE4B79109a3f1E8d0F10Da120"
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
//!           "caller": "0xB96eD2F5C56e26b30dA330c9d8d989cc0981e7E5"
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
//!           "caller": "0x98639f387d738619847Ed09FBfE606C8cE95f125"
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
//!           "caller": "0xdDbAE0DeAb4626b0c53Fe826764A79F43400e24F"
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
//!           "caller": "0xCfcD8D51F0b0A08D469F1f7A273127D4945cD5cE"
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
//!           "caller": "0x7b2679FbeA5c8198756e7C48946EF5d5e075dcA1"
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
//!           "caller": "0x5fE0D026B26616B337F16a825361df616FfcbDe6"
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
//!           "caller": "0xE4b9e91f28e644F888991441e8c7D1DF037E0A94"
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
//!           "caller": "0x9807A39e9E22A8c47CAcF5e0Fb7358EA12958f19"
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
//!           "caller": "0x539E6497aC95a1d5B21C1B6040A52611cd843A1B"
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
//!           "caller": "0x4DCC7B20f6B9237E307A0b39462ada1f1751eeB7"
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
//!           "caller": "0xFc8f45d748D047ff114520E0407432Caf11fe0dc"
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
//!           "caller": "0xa201b477Fb42eEad5C52B1EBe1c9Ff6997aE8B92"
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
//!           "caller": "0xb596093eA8967a84C05CaCfEe985C4f002B38Ba6"
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
//!           "caller": "0x4df03602f7fbf276d1cdE99817a7c060c205fB6a"
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
//!           "caller": "0x875008f8030F83932f2466E7A8C8596D0FbA542e"
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
//!           "caller": "0x389cF64C884C51a5DEec0a420fc640904d5d2E6E"
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
//!           "caller": "0x9924d7279e02da2BC0d34a5cEf890017b162CE2A"
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
//!           "caller": "0x1e90FC1F124F60E5A1517eA9c1cE8B2dB843ffa5"
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
//!           "caller": "0xa6D559f51A08277a7E8181518F814D942B2Dd7dE"
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
//!           "caller": "0xe64715500ECC6F37FE3eA2071a492e411cEB4dA9"
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
//!           "caller": "0x441d1477a7e8503C36b497c50C34aA4303FEe9d3"
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
//!           "caller": "0x28d8D44C12FC1c8bf6e7F07Fa4d09179f1a66975"
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
//!           "caller": "0x33EE9d4944cbEA5b099726FCb933E6FfD6885556"
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
//!           "caller": "0xF53a444DEEcdbCA665cd21Cd8D138565bfb03b59"
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
//!           "caller": "0x56c6e8fb3F422993FB6e08D3483bD440058CaF14"
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
//!           "caller": "0x92D3C0D095EC53295b233563b53cFc90415D5f34"
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
//!           "caller": "0xE442f16e47F9896fb1A99EF41Da307e512aE651E"
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
//!           "caller": "0x0eE8656d5d1462417F9fd94DEE92aA1AD8f38Bbe"
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
//!           "caller": "0x1Cb4CFa01B9B2ea4bbdBe082530B65627457F59c"
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
//!           "caller": "0x2916e777b97276D7A407478B4d599549889e01C5"
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
//!           "caller": "0xab141B4e4b6893965f57a92C28C4C3C91849457E"
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
//!           "caller": "0x402ca3dBc7E52BeED45EC28314b9Af9c305921bd"
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
//!           "caller": "0x1F2D0FE9e559bF0d16f6dCB33b365805D231a55A"
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
//!           "caller": "0x5EB82F29D5Fcf6Cd5d7AE5AF2dBEa2412f7C84cF"
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
//!           "caller": "0xf320464bd1381A520736A3728364C0df374B69dc"
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
//!           "caller": "0xD0c68a6c4Cf06B51b4750a222022b5291F3c3B2E"
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
//!           "caller": "0x5AADE9f5660F034115eB29035fbFa674B4fC95C4"
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
//!           "caller": "0xcc378AF2B7F8dD3BeE08a49cd4B8013d1ADEb427"
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
//!           "caller": "0xFEf41Fe5147c0dEd435d5e9DaEe12ae0F68360fe"
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
//!           "caller": "0x72Ac1c136bB50E6cfa0b2acbeF33eCdF2a5521Bb"
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
//!           "caller": "0x85f6F4f5CcD3A588f951586C24950fD862439384"
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
//!           "caller": "0xfe5a2dA43190aCF5db4535E29bCEB29E8AD7d053"
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
//!           "caller": "0xB12a5c4a7F87f63cA64F0aa312E5A81E791A71aB"
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
//!           "caller": "0xAbbB3288117D754c3D12bD1292a7962145449422"
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
//!           "caller": "0x28974f79C2DE784f64Bcae3A2bEd684c5De7EeE5"
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
//!           "caller": "0xB5289e439fc960724D843D5563292AC35EB2AC61"
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
//!           "caller": "0x03A4Bc20319fba6d7358B54758C21237699f6294"
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
//!           "caller": "0x96fe6f60323Ce926Cce53Addca532494F09416c7"
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
//!           "caller": "0xC51A4c150ca26eBFff5aBd247f504A0A26be59A5"
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
//!           "caller": "0x15A4A7320688355c13E7E0CDca26c48039cb42cA"
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
//!           "caller": "0x2b147972Bf0d07E54Ff63e9655dABC0e0FfEe50B"
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
//!           "caller": "0xC5Ccf4d8aad8F6A95bEde39495DBDE2E3B9c4895"
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
//!           "caller": "0x3e1A8d0BDFF1be291BC896300E07FBcD51BD6BaB"
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
//!           "caller": "0x56b6C9B2D0f111f5114e168b79C4a7C64f296BB6"
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
//!           "caller": "0x3C24a926ADcde9765fF4af8482a68452797B4197"
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
//!           "caller": "0x7A98bf85e2E3A63a31a02F0e664359CF16FFeb2d"
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
//!           "caller": "0x272C394EBE672690ebfC4EA969A5929EB195370e"
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
//!           "caller": "0xf153e04b036F81416a0BbC2D1b3BfBF9B25921a4"
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
//!           "caller": "0xa7A7C9921e2ED482F09898b8b4E057a0E6ea6b56"
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
//!           "caller": "0xa094A1eA266C58EAa73CbB268217eEDBaa2a0Ff7"
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
//!           "caller": "0x26Cb2D29004e9BC8d3DB5091B98e99022F308e7D"
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
//!           "caller": "0x8d8141e8E577057E318eb71B642be99e935e5579"
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
//!           "caller": "0x27A12162dF41Df3d633bE12bC7365CE831787aE9"
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
//!           "caller": "0xC2FFf1dcd35fF5b44E206950a46065382aC3C6A2"
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
//!           "caller": "0xEA0EAbCA059cE6Ab5A1ccb1598c688e7683C6497"
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
//!           "caller": "0x24567fEAaDef9671Cb93E86b63a11Dcbae69E2fd"
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
//!           "caller": "0x3108ad7e6fF1B1b795CF03e0e785469a3f7402bc"
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
//!           "caller": "0x443cD8eb6097Ff978f2965fd2F425fdd1d8dCA05"
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
//!           "caller": "0x2393C199F2C6B88B6CFEC7EdB1573cD96C0cCA68"
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
//!           "caller": "0x26d4501F0B2B244f044c9Bc046C186adf83E1Cda"
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
//!           "caller": "0x549bAe0cA13800E78426C09Bb2818D49FCdA9008"
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
//!           "caller": "0x74849b69093B773c13b5F34176634Fe680594494"
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
//!           "caller": "0x6506849B44A8c2970D5F96b8a71aA511A75b30cb"
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
//!           "caller": "0xF2d2533410B5D8a58BecE52AcfBAcecAe80c9f0a"
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
//!           "caller": "0xbF7F3dDf0d4Cb5289D5039Ea9A6AAc51FbC51Ba2"
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
//!           "caller": "0x58DFBB9142887E0F7077B5c87a82D26B62fD35DA"
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
//!           "caller": "0x48A6eB59C8Bde1471dBbf429937A9BBC53eEE504"
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
//!           "caller": "0xCE7Ab71cBb43D54f87E2d145C2E6d27b2A17685f"
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
//!           "caller": "0xb1B68a7C86d8f2F7A1200C94e0699cd07A7477Dc"
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
//!           "caller": "0x4ce2AB30818805b1f01E231E317FeD8B2b9feFC4"
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
//!           "caller": "0xa165b782531538a9CdCD0364a59c2B45457976BD"
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
//!           "caller": "0x78857317f1F7c8714Ef728BF697849F916a60C23"
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
//!           "caller": "0xf36eB91566D1eB5CE4aC3C7b2BC5633162562A08"
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
//!           "caller": "0xA9c4B5B603C705971E1FD3bceF9Fa7CC67Bd1aff"
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
//!           "caller": "0x59fF7aDB15A12b0d7F1f2a6FDaE8cb8e260b85dE"
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
//!           "caller": "0x53d0742C569cB948c3f8DEE5Db5187841a93CA85"
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
//!           "caller": "0x5A99A8B00494e7F3a6D277Ec055842166C041a5c"
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
//!           "caller": "0x5F0dD59270081636f24e43C640371f5Ab638c1C8"
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
//!           "caller": "0xEd6a4306bdC61252BAeBcB2DA487A59Dd5EABAE6"
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
//!           "caller": "0x97e02C1ca0F49dBf112Dc93C9C532EE61F139CF7"
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
//!           "caller": "0x1fde77030Ed3B0a2ab5C516B03208544e1294C26"
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
//!           "caller": "0x12316CfFf65DD4F15f3201668eA9eFdcCb8B162B"
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
//!           "caller": "0x2459Bc3639A67474Ecd09ef92FF3D37a88fD6Ba5"
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
//!           "caller": "0xfCb53B67F21306dD9A0fEE24950d1FDf9ED91B6C"
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
//!           "caller": "0x29312fA8aB6A4b84dF09D16A627856Dd51622A53"
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
//!           "caller": "0x202b7408cd3DBc5663ee2eFCce2B095176Ed8Bd8"
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
//!           "caller": "0x820bd1b97DeBB572Aad1ddb39Ff0194589F0274A"
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
//!           "caller": "0x8E5bfFbf7DF94c6304B45E8E2CD46836d04879cA"
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
//!           "caller": "0x7585862302ABA8B6996DCEA9de86549a66731478"
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
//!           "caller": "0xbde4572A3E759d0E993A9CBD03d1C482c40337eD"
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
//!           "caller": "0x5cb933381cC70A615A8705BA9798d52Ca21677Eb"
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
//!           "caller": "0x8C84Bf7A2e0078BCDa14db2aef5E1D70dfdFF4b0"
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
//!           "caller": "0x34E07AeBEF6F95381a9608A739D97330Cf67fc8A"
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
//!           "caller": "0x2d914f460A02Fe04422e4cb66d5C74221C39afcd"
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
//!           "caller": "0x43c86791d96F5DbaDdcFAf1756dFD8bFc9a5CB56"
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
//!           "caller": "0x7F7d488ca7E4D170b5647608c2698f81E90dBC28"
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
//!           "caller": "0x6D871aCA3F54F7ee124ad25A61ae77D9B0b55ea0"
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
//!           "caller": "0x474f0dA3baA7C9d20d0BA5242D3406564Ca7fDc4"
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
//!           "caller": "0x3B7E399c3E67c1691866F06A8A28533cc50A6aF6"
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
//!           "caller": "0x24eDBa8825c77a0b8859E9F83126a6CaDDE48E96"
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
//!           "caller": "0x66cE883C55e9BADCC99e9C9658a3C91a906E6CB7"
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
//!           "caller": "0x8AD0EE91deACEe47ea947E8096d7544F2ed0aB10"
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
//!           "caller": "0xEe1458F9989da894ACdaDcEe7B68f1a47aCfF15E"
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
//!           "caller": "0x6529D056dC8e2b8a4f9987146e31Af2A07753A77"
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
//!           "caller": "0x1A55cF5F750a0f650B85676f4A57b728AD117E38"
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
//!           "caller": "0xa6694A30B230E3a5745c38895234913E42C51915"
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
//!           "caller": "0x326450296fC3B4D272b2e5ef8c20a6aBe952Ed11"
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
//!           "caller": "0x342ef9C83c54D1344528D56aA1e5359f8faCfa9a"
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
//!           "caller": "0xC85EC154aC38369ceE391D9444fc3C16cC37AD52"
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
//!           "caller": "0x17977358e4DFB69a1EE1938387Ed2806b8846039"
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
//!           "caller": "0x4f771ba913839b3b043dcdea2bC50547EFDAa439"
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
//!           "caller": "0xE07a363a86fF141b3aac3EfE8bc7A89a3822f5DA"
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
//!           "caller": "0xA1C155f457852F26Ce7fa756cAEB17Bf0F4D1Ed3"
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
//!           "caller": "0x926550547c0250acEd7FAE8BC5d7b85363B2a687"
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
//!           "caller": "0x84740D20E6F8a1cA4Dbf7aDE0d9ece0933821aAd"
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
//!           "caller": "0x4e0361cb7114092a2f40089bB510d196b9CB64Fd"
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
//!           "caller": "0x7D79bac7Bb9dc6EBbf5E24d54966f46548799B2B"
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
//!           "caller": "0xB40f7B7f6e542F9DA6A8C0F0481a251e4cC1a43d"
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
//!           "caller": "0xC1E406e48A2528543B5f7E877e11e75877418741"
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
//!           "caller": "0xE572C1f22E7307863D09812AD24cfFe05B013225"
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
//!           "caller": "0x00cD0D4bE15Cbc00C66e3d168ef4Ccb78de11Bfe"
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
//!           "caller": "0xD9fe7f825031dc3EbC5eFc8a060DE18789A4EC9b"
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
//!           "caller": "0x1331c7bB2BeDDE3945083015A48AcFCC5e438197"
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
//!           "caller": "0x228Be6207eCc13B9156d7E0011f1CD113C86a024"
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
//!           "caller": "0x25E353557C69d3A61cAF6de97BaD191C418ac136"
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
//!           "caller": "0xEe1401DCB53FA5dd58E4C6037B6B648Df6857A87"
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
//!           "caller": "0x33341a2712DBca64283b73867DA096DDcFc5E4bb"
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
//!           "caller": "0x8AA3E40f814FEe908c49198099C0D27A081244b7"
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
//!           "caller": "0x489f845Bd54414b571301173E4E4b257c6BF7682"
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
//!           "caller": "0xfc91d1f9CA2e68D73E01ae8458b57040f7e72200"
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
//!           "caller": "0xd1a48A2a04786e08EA2887A354Ef8b46B84B8B25"
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
//!           "caller": "0x9aA9a3eA90Effbabd7053F2d7Af4BFb243acEa46"
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
//!           "caller": "0x0932a928Bd2F242CD4dD3B3fe5F8Af5899783758"
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
//!           "caller": "0xFD1b7b1E09eC279ff5e93d67ea836197e89B612d"
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
//!           "caller": "0xDae9bbe3FC51159216e8bfa0D8ac340a258102c6"
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
//!           "caller": "0x91518805d8A1bA68BadE54293857166a62b27D28"
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
//!           "caller": "0x3F3cCFF645E3fC9253c41D94Cf5a53fc29AFBfba"
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
//!           "caller": "0xf231c86af7AD6361ceeA61d9594429Df4e33BC5B"
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
//!           "caller": "0xbE0d29D85887d81B311e4AEcb76F3a43a2dB6dbB"
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
//!           "caller": "0x4EC757D9f75f7d166f72b42FA39E8abA35c68fc7"
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
//!           "caller": "0xe5ec1b8DDe7CbeFAf6A5C482FcFbcc26019553eA"
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
//!           "caller": "0x8d0D7E7b680eCB941F2e0733Fc3b1154102F9b73"
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
//!           "caller": "0xa8006fc089D719E124Ed3776D9C744729678C252"
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
//!           "caller": "0x9faEAA1649F8CCB5798532eC3286aCFb1b87258f"
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
//!           "caller": "0xAE1CE1A433Aa6e62B1C7933564DE218592bF14da"
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
//!           "caller": "0x439732D566C253B21E00C73B8FC5aA16CE718eA4"
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
//!           "caller": "0xAC1AbDF3E3FA3C6b9ad692EeE62F962d09B3C142"
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
//!           "caller": "0xE7eC8c7995eFD1AF806D0f2a4cd8C4bE8eAdA49A"
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
//!           "caller": "0xDfC0ec235ad6D38bA1d4D72f9Cc14677887d24f7"
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
//!           "caller": "0x073442D20F5Fc12C1b8D61ce76026C980443305D"
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
//!           "caller": "0xb0CF3dDc7dfd5e352274c9027B919e18a1C68DDE"
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
//!           "caller": "0xACDcF23c0578120c1c2aAA54675b3564fe43aB41"
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
//!           "caller": "0xC51a996758B960f0dca3Cc04EB036AfFeBBD7c0d"
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
