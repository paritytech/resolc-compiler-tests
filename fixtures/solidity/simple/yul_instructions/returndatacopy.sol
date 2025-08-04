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
//!           "caller": "0x8c4119C393038f6eD16F8B9D8B186dc1D516cBD2"
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
//!           "caller": "0x36b10C5FeAbc4e3C6bA82C58E64A69423b875C85"
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
//!           "caller": "0x297788784159630E5500Ed42B87BA4d490412c25"
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
//!           "caller": "0x3435014Af4aC607d5B4D544A5FCA69b9315e2BDa"
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
//!           "caller": "0xAaA819CCFec7DeA9D443D16d43e8F1D6C167eeBA"
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
//!           "caller": "0x816A67A82CC566d6424c73f7C62dc5e1b82188Cf"
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
//!           "caller": "0x1E8d2309C8CC996E15B5E93F55974901FfE76772"
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
//!           "caller": "0xbBbd766CFbd333de87420792f8531679F5949bc0"
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
//!           "caller": "0xF89283d2ACbd2ED8f185219aD8aaF54b38fa4219"
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
//!           "caller": "0x20E1280A98BBa46f9F867BBFE9D0cd9c06d6b148"
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
//!           "caller": "0x0bb98c469084975D7Aa2c04061699AE14FEDF4aF"
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
//!           "caller": "0xb2D2108Db6D34D7775F32F190c5Ba8219Ca6A704"
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
//!           "caller": "0x1E56ADC35b2595Ab6a936Ee7F33e9dAE968fBc88"
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
//!           "caller": "0x3400F0632bA52DB476a2706912a607F717976895"
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
//!           "caller": "0x0196d840Be452288ba480367Aa4Fa359112AbFB1"
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
//!           "caller": "0xe113594fdf4F34Ca522822387930CCF2bC9A3C98"
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
//!           "caller": "0xb0EaDa334873950c80e26Fa827A0A00Fe671AcC4"
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
//!           "caller": "0x521813Df42F96ac87e1a5F400b9B70FF0aca1429"
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
//!           "caller": "0x504660DdD6fB55B3Ac0383162923A10b3d4DAa1D"
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
//!           "caller": "0xDd0aB08324268e7133752Ed9b3f1e3233cDce9C3"
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
//!           "caller": "0xE081B2d4B4A67c0D20B183c9A27c404f5a7C4aFf"
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
//!           "caller": "0x3b92b34f5157cAA350e0966a6C4637d2d5de1e1b"
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
//!           "caller": "0xF635995792d4c672355e4E1bA6A2f00e929A471b"
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
//!           "caller": "0xb6fFcA14f13010058FCB2dE9464D492BC5a91745"
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
//!           "caller": "0x57FB5c3d12bCeB9a86bD6726C6c55bdb2B8860de"
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
//!           "caller": "0x740c52E2dF2A5a916Ee90081B26a1A1A7BCd3783"
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
//!           "caller": "0x9B00a2fBcCc83eE210d4fcF018620e444e7e1cc8"
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
//!           "caller": "0x16D4F11213E2D4A6372a264Dc08bC8D270B80167"
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
//!           "caller": "0x5183eB78Cd8aD0ad959a74d956985DaEFA11dCBF"
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
//!           "caller": "0x10bcd801261f0dfF13583064Eb7B53B401cDf101"
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
//!           "caller": "0x7048A454677Eb28C13F98010632A32bA06920dFC"
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
//!           "caller": "0x2BceA6F9f86d1f729E5DbCb5BB85a3e95DE64c07"
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
//!           "caller": "0x1EE296Cf9314c10AdaC50B9aCf84dC94ABC071dC"
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
//!           "caller": "0x75b4Ed663A0648d025405bBf559e784AeaBcAf0d"
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
//!           "caller": "0xE3b181e0cE766Ee7A10feC625fdDf981F6a29234"
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
//!           "caller": "0xD4cf29cE4D916E32D84f053Bf6F02591FA49832D"
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
//!           "caller": "0x37b5487f7A7D6b15b5E2AAAfe6aCf29e3e0a359e"
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
//!           "caller": "0xB72f8C0103DB3FCA7Dc9e44b360db35d57Eea515"
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
//!           "caller": "0xd28d6ed738e14cDD59cB61a6590C2B376aB79c89"
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
//!           "caller": "0x86da7aA2f74753fFC68E0b615f7D133658782353"
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
//!           "caller": "0xcAf15Eacf7333802421eEc26A3a1D6cC39e9127a"
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
//!           "caller": "0x73aAAE394a10485E212a79bD9c612c3723355E0A"
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
//!           "caller": "0xDE4721Cf0B67193D417544728C227f5f395A633D"
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
//!           "caller": "0x4bfCe1893DE6f72A2bDc8388a680a88bE3B42a14"
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
//!           "caller": "0x88E5505AB93f7097a35fb4Dc56284137C9E5Ba5c"
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
//!           "caller": "0xC05D9967bf222BD0e4734B56212Cd4beae7fC1EB"
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
//!           "caller": "0x441708Ba46a387EF2F884ef8064e9e9379EB653D"
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
//!           "caller": "0x83FaeFC82f3D490e4B287e247E3BfA3893729175"
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
//!           "caller": "0xACc125D77BC977413Aba9E59Fd358fa53473bd64"
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
//!           "caller": "0x9e43F4370A2BfB07721d5D242972fdfFb67175a2"
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
//!           "caller": "0xe642529E4614B70868c48a7167BDb8Bb7c1840D6"
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
//!           "caller": "0x12C8629b6b48178834009B6C089C81b6EB2F3886"
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
//!           "caller": "0x622e6af15764970892511F5078Ee526340b95D7A"
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
//!           "caller": "0xE45dd0D7f99a32CC7fb098dB4391A83553E908A3"
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
//!           "caller": "0xBb8aE7b860b30769Aa9Aa3569d4b31E1Ab5478bA"
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
//!           "caller": "0xE32fF8516E5AdDf4ea55aFe211807470bb8461f3"
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
//!           "caller": "0xE4e9f8304206eCAA77C38E7Dcff8AbaBEeb2236e"
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
//!           "caller": "0x301b09151246a8f8C032C41C3a0970a0DE1625EE"
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
//!           "caller": "0x6e9BfE7B6e297b37Fc6C23F5Ed84408A8387Cea2"
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
//!           "caller": "0xDbdefEBcF7833DEf9B1561aDb0d98C484c68a748"
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