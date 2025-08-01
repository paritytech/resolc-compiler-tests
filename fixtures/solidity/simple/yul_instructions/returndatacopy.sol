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
//!           "caller": "0x8E83297C6Ed88Ac512dF45ff51Af415A9740Eb75"
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
//!           "caller": "0x9eb4d7bA62ED5798Be79F974FC265F7E7a9EaF09"
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
//!           "caller": "0xD3f7f429D80B7CDf98026230C1997B3e8A780dc5"
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
//!           "caller": "0xec5397CB66be9438048Be225D276fb3C3E05827E"
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
//!           "caller": "0x8AfB7e5Ea53Bc6D11278D035cE4D605bF8e3e115"
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
//!           "caller": "0xc9dA85d8dFBDDaA6aC78dc3f29EE7DF8E0c28b3F"
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
//!           "caller": "0xFcAA037eBB96CC3A9108B165558AB197b9056947"
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
//!           "caller": "0x26C18B10C1F81d5829fCEF629058c8cbF61b96fa"
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
//!           "caller": "0x9EA374b0f569c25c7Bc2c202625bD82688F80A55"
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
//!           "caller": "0x6a6B99998C61fC92a62adF3850811a0128143449"
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
//!           "caller": "0x726472932b85fB54Ad44614c7eAd5aA182cE9406"
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
//!           "caller": "0xe31Bb55169F72C1b62675C641BF4729006650ED6"
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
//!           "caller": "0x54a5c304885D0D4B665C7Ec0FF96f1318e969C3A"
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
//!           "caller": "0xeA95a925b3DC524FBd6A41adae3c4c720e9b53aE"
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
//!           "caller": "0xDE583864784d00473dFB7829173cf3Cd22B45e06"
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
//!           "caller": "0xF8a5c098E247F20b0fEa2462fEdC85DB6633e3eC"
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
//!           "caller": "0x9805cD0bbD324dD263a734513536D864F111D50d"
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
//!           "caller": "0xF4334A7B7cD907Ad2203dA071B6b283D08135572"
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
//!           "caller": "0x2dB917128b4843d4858156d98e9CF997E7a2245b"
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
//!           "caller": "0x99af72B4091dD1EbDf31D4a1D1Ccb8b60523c7F2"
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
//!           "caller": "0x8e1454693ff8aa72f80b0BbA6A4588E0ae6D538b"
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
//!           "caller": "0x403F2aC41d2e72fF41b62F746c8573c4108e5Ef6"
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
//!           "caller": "0x81717bC173b4E084A03F225083C14565a6a5a1c5"
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
//!           "caller": "0x47a70b030E81802646cfE44CBC1d891b44110A20"
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
//!           "caller": "0x6f7F3b6eF17BeAFa5719cFc6995BAfA079aDd4AB"
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
//!           "caller": "0x9701AB7F46277D1420b4045A34B1f88f01B03589"
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
//!           "caller": "0x3f871f8d56a89cF76d41648Cd022A25AA53F202a"
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
//!           "caller": "0xB5E072002b767D72A2e9277010166eb8020dA4F5"
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
//!           "caller": "0x78981E626831653a7B7bf43fFBc27467e7d62217"
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
//!           "caller": "0x411f0c0ebe3825808a08b108047Ad23B3C70b950"
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
//!           "caller": "0x75DfdE66B3aE67eE59b39b89e216E18867989CE2"
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
//!           "caller": "0xAE0FDe8f15cBAb3924695fB77B9705D0Bf206552"
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
//!           "caller": "0xF168f18Af85762573b03436746934eF0372df0Aa"
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
//!           "caller": "0x2078C20Da1B9774bCfB95D6B9B9f9aA5342097E3"
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
//!           "caller": "0xb68A788d057070ac857dC0B9DE27612b2bF0f721"
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
//!           "caller": "0x74d4f46d17F97dCf3af4F140636Db2A611E293BB"
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
//!           "caller": "0xa0b75644319ec1C40Fd94b99D7413c0eC8aE8612"
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
//!           "caller": "0x97588b23B561D96Ad77e233402353F913ba53Aa5"
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
//!           "caller": "0xCc19086Aaa80e76e17E915Bea83d30Bf93476881"
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
//!           "caller": "0x64b9C75693351048cCB176e7380dC41d2Cb5A2ee"
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
//!           "caller": "0x205F1179b7cd64b0503cb821002B979e522930D7"
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
//!           "caller": "0xD599B3D4BB309A1DD3E79e7B6D40E0AB3B1867C8"
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
//!           "caller": "0xf23e2357b51A691986d59A41d760D8fe083A67f7"
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
//!           "caller": "0xa73CDF4f3C43A799d82248d95869c7e8a82CB2DC"
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
//!           "caller": "0xB4b2A13C96090f0eeC6C84c47404e7Fa8E974515"
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
//!           "caller": "0x57875fe5D456bdB6bC1AB98AA832Ee5529E245aa"
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
//!           "caller": "0xc848d73c1436F64bf4b154256856585424c21A12"
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
//!           "caller": "0x9308937A548f45162e5D3de4dEEC10E837BAa854"
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
//!           "caller": "0x1D64F27720657Aff7110688dB6288F7574C3B711"
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
//!           "caller": "0x57fD35D6111aE0B240842D1A486CfEfd088e9946"
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
//!           "caller": "0x1E53F584CB71154ad522B8A1072A06a3036d6e00"
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
//!           "caller": "0xfe25B533845249d38aad4c8906F4eD40939624eE"
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
//!           "caller": "0x88fa6e59AAae4977bDd4d99F1aA6E35026632019"
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
//!           "caller": "0x80921DA792a5e88fF208A056Fb476476beBD4c2C"
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
//!           "caller": "0x680BC9eCA70443e426a7f6CcdF74D70Ad26C62A9"
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
//!           "caller": "0x939687E7BBACC73B631230367f3E9C05AdbD9191"
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
//!           "caller": "0x5dDDFb5Bb4a586895c0fCfDD4e42fA0c001f426d"
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
//!           "caller": "0x97B2FA876E54784588Bd5cebD1038FaD9b3Cd251"
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
//!           "caller": "0x0772fF64d1Efbc0CdAFC01E21B58A61EE2a77ED1"
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
//!           "caller": "0xDDeE7261269961684c8677cB8F9e5eAEAECb0fB2"
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