;! {
;!   "cases": [
;!     {
;!       "name": "zero_zero_zero",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0",
;!             "0",
;!             "0"
;!           ],
;!           "caller": "0x237f0ee88f86aF75cd2185eb5A45Bc1EC120Af28"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "zero_one_zero",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0",
;!             "1",
;!             "0"
;!           ],
;!           "caller": "0x5e1abd0c07fb31B5433dE27Da88A7d08A7bA061E"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "one_zero_zero",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "1",
;!             "0",
;!             "0"
;!           ],
;!           "caller": "0x059d5d8D26f9765DA43c23821a033DE9413AB76F"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "one_one_zero",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "1",
;!             "1",
;!             "0"
;!           ],
;!           "caller": "0x61980E1463333ad2B0C4aF7e1Bd57D4333965B3A"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "zero_ordinar_zero",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0",
;!             "433478394034343",
;!             "0"
;!           ],
;!           "caller": "0xEb8275486ec09Da48ef08e20F6AA4064E339b5A3"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_zero_zero",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "121563127839120",
;!             "0",
;!             "0"
;!           ],
;!           "caller": "0x80240110B38F4A33baf8e2aEF0eCd8c35C6E741B"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "one_ordinar_zero",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "1",
;!             "433478394034343",
;!             "0"
;!           ],
;!           "caller": "0x5183129C5Fa9863a9FD43a28f93088f8cb4c97E0"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_one_zero",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "121563127839120",
;!             "1",
;!             "0"
;!           ],
;!           "caller": "0x0E98AD362D0Fba068e4Ce81FB86a4BCEa265e2D8"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_ordinar_zero",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "451167890987656789",
;!             "3456789009876545678",
;!             "0"
;!           ],
;!           "caller": "0xd5d48Ab93Eb0BCb5C73BA10EBef96C4985D998aa"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_ordinar_to_max_zero",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "0x0000000000000000000000000000000100000000000000000000000000000001",
;!             "0"
;!           ],
;!           "caller": "0x647F812D32bd2001A150EB128C51578CA6246743"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_ordinar_min_overflow_zero",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x0000002000000000000000000000000000000000000000000000000000000000",
;!             "0x0000000000000000000000000000000000000000000000000000000008000000",
;!             "0"
;!           ],
;!           "caller": "0xd1E6fA73B4be8962eF54ac62cBd4b337Fb7c55f7"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_ordinar_overflow_zero",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "2345678909876543212345678909876543212345678909876543",
;!             "23456789098765432123456789876543212345678987654321",
;!             "0"
;!           ],
;!           "caller": "0xa93712eB4122c3B873D0028007f6F03887418DdA"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "zero_max_zero",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0",
;!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
;!             "0"
;!           ],
;!           "caller": "0x31Be650DDF9f750599274181e86f4fCaE7a953Fa"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "max_zero_zero",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
;!             "0",
;!             "0"
;!           ],
;!           "caller": "0xf0f4145C089D764a22E53a009a316E600a4F54b5"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "one_max_zero",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "1",
;!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
;!             "0"
;!           ],
;!           "caller": "0xE49a459B26d974685db29d0A82836Ce380B3b462"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "max_one_zero",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
;!             "1",
;!             "0"
;!           ],
;!           "caller": "0xe2de3b4098392838136dDDCE741A741c1b4b793C"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_max_zero",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "7437834752357434334343423343443375834785783474",
;!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
;!             "0"
;!           ],
;!           "caller": "0x4EBA41e196C5294DC3eD1296FD4C4E7938D4d06B"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "max_ordinar_zero",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
;!             "23784273472384723848213821342323233223",
;!             "0"
;!           ],
;!           "caller": "0x270C059fCcF1c2493Fa7e12EAf3Fe9BE9f8A0D06"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "max_max_zero",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
;!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
;!             "0"
;!           ],
;!           "caller": "0x10910406C9579Cfb3032AFE898219395753ab95f"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "zero_zero_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0",
;!             "0",
;!             "1"
;!           ],
;!           "caller": "0x720e347F83D8C0B933b980Bb51ab9b0fBf5D5e7a"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "zero_one_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0",
;!             "1",
;!             "1"
;!           ],
;!           "caller": "0x808f566cDd9A3f7cb413e9546A6f0AD2AE1244aF"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "one_zero_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "1",
;!             "0",
;!             "1"
;!           ],
;!           "caller": "0xc6784B65BC3B5636929A117f8bBac03a5685c5C0"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "one_one_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "1",
;!             "1",
;!             "1"
;!           ],
;!           "caller": "0xb12E2bCb1F7f5F3D05fa7861d1E7140e04141467"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "zero_ordinar_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0",
;!             "433478394034343",
;!             "1"
;!           ],
;!           "caller": "0x0862A644c52fbB30E1B74E23618275384092eA02"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_zero_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "121563127839120",
;!             "0",
;!             "1"
;!           ],
;!           "caller": "0x7D3bFdC2F22339C03ec4B573c08c13D4f42F2BF0"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "one_ordinar_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "1",
;!             "433478394034343",
;!             "1"
;!           ],
;!           "caller": "0x7D7462f956c36AaC226a3A04FC16e4a882514bfD"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_one_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "121563127839120",
;!             "1",
;!             "1"
;!           ],
;!           "caller": "0xd7128A2FfFef99461f05D7192CCd705E77691C46"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "two_one_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "2",
;!             "1",
;!             "1"
;!           ],
;!           "caller": "0xcad5216E5Db3157690cA10849CC26b71e9bCF2D9"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_ordinar_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "451167890987656789",
;!             "3456789009876545678",
;!             "1"
;!           ],
;!           "caller": "0x55E696519e15044F3A6f13DBA91F6293B4f0c92e"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_ordinar_to_max_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "0x0000000000000000000000000000000100000000000000000000000000000001",
;!             "1"
;!           ],
;!           "caller": "0x0Ee1d7E9d6357F963683Fc65146820ccF82ea8A2"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_ordinar_min_overflow_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x0000002000000000000000000000000000000000000000000000000000000000",
;!             "0x0000000000000000000000000000000000000000000000000000000008000000",
;!             "1"
;!           ],
;!           "caller": "0x856F01d167C41557614b9eb0A2F98e550195DE71"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_ordinar_overflow_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "2345678909876543212345678909876543212345678909876543",
;!             "23456789098765432123456789876543212345678987654321",
;!             "1"
;!           ],
;!           "caller": "0xEdc980c211C35Ffdd53fea8741C554D98c479310"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "zero_max_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0",
;!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
;!             "1"
;!           ],
;!           "caller": "0xe659AdB71E3eED62b03b7808aaDD036b3466C61a"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "max_zero_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
;!             "0",
;!             "1"
;!           ],
;!           "caller": "0x67EF7bD179A4846b0BbF2e08B62a9e319e5AedCA"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "one_max_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "1",
;!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
;!             "1"
;!           ],
;!           "caller": "0xb22111DA7dEb0461bfe3D6331C59C90fB5b89591"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "max_one_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
;!             "1",
;!             "1"
;!           ],
;!           "caller": "0x002b06B72D952bCA99e46E8a6f41f9B7Ab49c371"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_max_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "7437834752357434334343423343443375834785783474",
;!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
;!             "1"
;!           ],
;!           "caller": "0x1878dA4d2Aa178D7Cd1443A56BD5d41A0fB7d94D"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "max_ordinar_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
;!             "23784273472384723848213821342323233223",
;!             "1"
;!           ],
;!           "caller": "0x4047190a535F0b05D0F87DFcc1CCF61b0b5A4c6F"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "max_max_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
;!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
;!             "1"
;!           ],
;!           "caller": "0x2e7eBFFCB8D600E260a8C455163E4267Cd21aCbB"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "zero_zero_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0",
;!             "0",
;!             "6734895437463543785934736452323748923482347623542634728"
;!           ],
;!           "caller": "0x248D01460f94456305491F3Df58B5090b9B0b946"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "zero_one_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0",
;!             "1",
;!             "6734895437463543785934736452323748923482347623542634728"
;!           ],
;!           "caller": "0x6C87b15DDE7bD1A894D45adca8E8fa55BAd14aE9"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "one_zero_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "1",
;!             "0",
;!             "6734895437463543785934736452323748923482347623542634728"
;!           ],
;!           "caller": "0xCBEA789361ce10ef291a0Cf32c4dc901A2112062"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "one_one_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "1",
;!             "1",
;!             "6734895437463543785934736452323748923482347623542634728"
;!           ],
;!           "caller": "0x2442Ce2Ba2d98Fc567d0eB9F8C45Af6df12dD60c"
;!         }
;!       ],
;!       "expected": [
;!         "1"
;!       ]
;!     },
;!     {
;!       "name": "zero_ordinar_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0",
;!             "385347583459430234923842734623542325264782394023482374625423",
;!             "6734895437463543785934736452323748923482347623542634728"
;!           ],
;!           "caller": "0x0da5818845d0D571e05675Ab925125777D1c2f9E"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_zero_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "43873543534623235553423423423949234923947324723387478233",
;!             "0",
;!             "6734895437463543785934736452323748923482347623542634728"
;!           ],
;!           "caller": "0x023e123ca111F61ea56dBC8BC25BC3718DC48cb2"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "one_ordinar_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "1",
;!             "8939384548956875984554349903434903490994494993020959",
;!             "6734895437463543785934736452323748923482347623542634728"
;!           ],
;!           "caller": "0x99c8aAac088b913D9589f66cD49a6F1a92c0792a"
;!         }
;!       ],
;!       "expected": [
;!         "8939384548956875984554349903434903490994494993020959"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_one_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "54367829174652819374654281934765281937468197465281947562815652819",
;!             "1",
;!             "6734895437463543785934736452323748923482347623542634728"
;!           ],
;!           "caller": "0x49F1d723d6c56c48386D785f1eC600837d96F2A6"
;!         }
;!       ],
;!       "expected": [
;!         "1122390563298694939482039005289855975809195069546337163"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_ordinar_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "4511678909737783487438348343487656789",
;!             "3456789043333409876545678",
;!             "6734895437463543785934736452323748923482347623542634728"
;!           ],
;!           "caller": "0x193Db652bBb16a57925F55dA972999467D7c5e54"
;!         }
;!       ],
;!       "expected": [
;!         "5676430915488228986215146216393544180428262509017295078"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_ordinar_ordinar_to_zero",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "5893033507780600812692894395783280308047054170599805387",
;!             "18738036435609058585768",
;!             "6734895437463543785934736452323748923482347623542634728"
;!           ],
;!           "caller": "0x2C7b4Ea22D86BA90D34a82490a2e82001dd88508"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_ordinar_product_minus_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "143295647605607314594356094730292530286858460075375207",
;!             "47",
;!             "6734895437463543785934736452323748923482347623542634728"
;!           ],
;!           "caller": "0xe05d2238E532B80f475534a4CC7aD5Fcfce05349"
;!         }
;!       ],
;!       "expected": [
;!         "1"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_ordinar_product",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "4",
;!             "1683723859365885946483684113080937230870586905885658682",
;!             "6734895437463543785934736452323748923482347623542634728"
;!           ],
;!           "caller": "0xA7b5a1837c3858cE960327fd90801eD56B7e0fc3"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_ordinar_product_plus_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "2244965145821181261978245484107916307827449207847544909",
;!             "3",
;!             "6734895437463543785934736452323748923482347623542634728"
;!           ],
;!           "caller": "0xCC1B43A0C2b72aF97A3791ED213bE66114034F49"
;!         }
;!       ],
;!       "expected": [
;!         "6734895437463543785934736452323748923482347623542634727"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_ordinar_ordinar_bigger_product",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "4567892342342234534234",
;!             "3423423436457597665235",
;!             "6734895437463543785934736452323748923482347623542634728"
;!           ],
;!           "caller": "0xFeaE9A3eD87061b013B70b350b268B879A08ca84"
;!         }
;!       ],
;!       "expected": [
;!         "15637829699989597708005861762222266079154990"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_ordinar_to_max_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "0x0000000000000000000000000000000100000000000000000000000000000001",
;!             "6734895437463543785934736452323748923482347623542634728"
;!           ],
;!           "caller": "0x4b86A3F9aBf3d4acb155fdCAeBc9206c00e02ea2"
;!         }
;!       ],
;!       "expected": [
;!         "5205817307728658054337357463547686623259643155181961175"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_ordinar_min_overflow_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x0000002000000000000000000000000000000000000000000000000000000000",
;!             "0x0000000000000000000000000000000000000000000000000000000008000000",
;!             "6734895437463543785934736452323748923482347623542634728"
;!           ],
;!           "caller": "0x7A6F86B63FF6fEcDC7938494feD11Cf9Bd3785F5"
;!         }
;!       ],
;!       "expected": [
;!         "5205817307728658054337357463547686623259643155181961176"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_ordinar_overflow_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "2345678909876543212345678909876543212345678909876543",
;!             "23456789098765432123456789876543212345678987654321",
;!             "6734895437463543785934736452323748923482347623542634728"
;!           ],
;!           "caller": "0xbf6Db2236Eb7d3597D2cb421042bDaBE0A1F83FB"
;!         }
;!       ],
;!       "expected": [
;!         "4264809475174460139372937695722005330348657185160810887"
;!       ]
;!     },
;!     {
;!       "name": "zero_max_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0",
;!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
;!             "6734895437463543785934736452323748923482347623542634728"
;!           ],
;!           "caller": "0x4eF375922eAAA09E54b5E495EbF6Dc7026205d3F"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "max_zero_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
;!             "0",
;!             "6734895437463543785934736452323748923482347623542634728"
;!           ],
;!           "caller": "0x9fbfB4660dc2B20Bb9f1537B71198740d796334c"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "one_max_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "1",
;!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
;!             "6734895437463543785934736452323748923482347623542634728"
;!           ],
;!           "caller": "0x51be7E1408C914BD769777144490C88a1A916c8A"
;!         }
;!       ],
;!       "expected": [
;!         "5205817307728658054337357463547686623259643155181961175"
;!       ]
;!     },
;!     {
;!       "name": "max_one_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
;!             "1",
;!             "6734895437463543785934736452323748923482347623542634728"
;!           ],
;!           "caller": "0xA2Fd79B46eEF32F10cd6183c8eFE148130e23844"
;!         }
;!       ],
;!       "expected": [
;!         "5205817307728658054337357463547686623259643155181961175"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_max_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "7437834752357434334343423342323233245234534443443375834785783474",
;!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
;!             "6734895437463543785934736452323748923482347623542634728"
;!           ],
;!           "caller": "0x02CBE8335EE41b34fFC316e8CB51D58b12ddc28b"
;!         }
;!       ],
;!       "expected": [
;!         "5617213867212480757578809585112783067547734929923987190"
;!       ]
;!     },
;!     {
;!       "name": "max_ordinar_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
;!             "23784273472384723848213821342323233223",
;!             "6734895437463543785934736452323748923482347623542634728"
;!           ],
;!           "caller": "0x47591e63805e5419D6fF177af288C3b623028F80"
;!         }
;!       ],
;!       "expected": [
;!         "3578153470724301227568936858877098024097400680412702913"
;!       ]
;!     },
;!     {
;!       "name": "max_max_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
;!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
;!             "6734895437463543785934736452323748923482347623542634728"
;!           ],
;!           "caller": "0x0cD2525c2102fE6f4c175DAF4a7F394A147549E0"
;!         }
;!       ],
;!       "expected": [
;!         "1846270932306819610647429224033438799896242185499682409"
;!       ]
;!     },
;!     {
;!       "name": "zero_zero_max",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0",
;!             "0",
;!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
;!           ],
;!           "caller": "0xb4377996fcab569a87f552B941dC121F8FB7a2f1"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "zero_one_max",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0",
;!             "1",
;!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
;!           ],
;!           "caller": "0x307ae6e5ba076406A61346E9DA9b2C2052811e9f"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "one_zero_max",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "1",
;!             "0",
;!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
;!           ],
;!           "caller": "0xF764A2422Caf5DB3B3F8979C8b4808F7dCb1dCD7"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "one_one_max",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "1",
;!             "1",
;!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
;!           ],
;!           "caller": "0x0570878D0054af0370796Ff089dC9c4f21CDA9F1"
;!         }
;!       ],
;!       "expected": [
;!         "1"
;!       ]
;!     },
;!     {
;!       "name": "zero_ordinar_max",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0",
;!             "385347583459430234923842734623542325264782394023482374625423",
;!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
;!           ],
;!           "caller": "0x2a5abBf6690608bA61779eB34EEb06fA7D5a84b5"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_zero_max",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "43873543534623235553423423423949234923947324723387478233",
;!             "0",
;!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
;!           ],
;!           "caller": "0xdb06aF2D06f3EeEcc76C03b1Bd489244b9648a1e"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "one_ordinar_max",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "1",
;!             "8939384548956875984554349903434903490994494993020959",
;!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
;!           ],
;!           "caller": "0xBcD1D2D080bbf9754a941fC5B2764e875182ccf0"
;!         }
;!       ],
;!       "expected": [
;!         "8939384548956875984554349903434903490994494993020959"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_one_max",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "54367829174652819374654281934765281937468197465281947562815652819",
;!             "1",
;!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
;!           ],
;!           "caller": "0xfd223c704734bb821990272D1771Db61d2a21661"
;!         }
;!       ],
;!       "expected": [
;!         "54367829174652819374654281934765281937468197465281947562815652819"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_ordinar_max",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "4511678909737783487438348343487656789",
;!             "3456789043333409876545678",
;!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
;!           ],
;!           "caller": "0xB64806B0307cb4f1A6Da475A24C0c60727aDb8E7"
;!         }
;!       ],
;!       "expected": [
;!         "15595922222219994270792624200954893890665171031928705745307942"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_ordinar_to_max_minus_one_max",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "14",
;!             "8270863516951156815969356072049136275233570333260040288532684571993794974281",
;!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
;!           ],
;!           "caller": "0x95a9eebC430a4Ca66860Bd4295B4C4B9519AA14a"
;!         }
;!       ],
;!       "expected": [
;!         "0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_ordinar_to_max_max",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "0x0000000000000000000000000000000100000000000000000000000000000001",
;!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
;!           ],
;!           "caller": "0xb5BC85bd483E89859812669F5f00E1aD844dadB4"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_ordinar_min_overflow_max",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x0000002000000000000000000000000000000000000000000000000000000000",
;!             "0x0000000000000000000000000000000000000000000000000000000008000000",
;!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
;!           ],
;!           "caller": "0xD66274529D7317d97B7bFb54Cf8Da34fDE1e3838"
;!         }
;!       ],
;!       "expected": [
;!         "1"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_ordinar_overflow_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "2345678909876543212345678909876543212345678909876543",
;!             "23456789098765432123456789876543212345678987654321",
;!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
;!           ],
;!           "caller": "0x5D402e3dEf0795c000E41591bec810E6AA04deb6"
;!         }
;!       ],
;!       "expected": [
;!         "109870817467274783132168917047078478060902558898874810394629740062300719137698"
;!       ]
;!     },
;!     {
;!       "name": "zero_max_max",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0",
;!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
;!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
;!           ],
;!           "caller": "0xCD66bd7b3d3AC3dDFA1Da5CB220D0bB48116eD29"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "max_zero_max",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
;!             "0",
;!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
;!           ],
;!           "caller": "0x2065a611124f2fb57E4c1E45230a8cf83460De34"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "one_max_max",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "1",
;!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
;!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
;!           ],
;!           "caller": "0xbECb03991839E4b332B39d0eFAAB740732c91642"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "max_one_max",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
;!             "1",
;!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
;!           ],
;!           "caller": "0x9E76cB8aCB3A2C4d096A844F8abf9dDa5AaB1AAa"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_max_max",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "7437834752357434334343423342323233245234534443443375834785783474",
;!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
;!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
;!           ],
;!           "caller": "0x9AFED21543b3a494fF45798943b6bD14d4e93F80"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "max_ordinar_max",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
;!             "23784273472384723848213821342323233223",
;!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
;!           ],
;!           "caller": "0xb17181F2C34F7289458d589Ae278193D7b530014"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "max_max_max",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
;!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
;!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
;!           ],
;!           "caller": "0x2ca1580D5c47510d969b2AC3437f40280cA6E58D"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     }
;!   ]
;! }

target datalayout = "E-p:256:256-i256:256:256-S256-a:256:256"
target triple = "evm-unknown-unknown"

define void @test() noreturn {
bb:
  %off1 = inttoptr i256 0 to ptr addrspace(2)
  %off2 = inttoptr i256 32 to ptr addrspace(2)
  %off3 = inttoptr i256 64 to ptr addrspace(2)
  %arg1 = call i256 @llvm.evm.calldataload(ptr addrspace(2) %off1)
  %arg2 = call i256 @llvm.evm.calldataload(ptr addrspace(2) %off2)
  %arg3 = call i256 @llvm.evm.calldataload(ptr addrspace(2) %off3)
  %res = call i256 @__mulmod(i256 noundef %arg1, i256 noundef %arg2, i256 noundef %arg3)
  store i256 %res, ptr addrspace(1) null, align 4
  call void @llvm.evm.return(ptr addrspace(1) null, i256 32)
  unreachable
}

declare i256 @__mulmod(i256 %arg1, i256 %arg2, i256 %modulo) #0
declare void @llvm.evm.return(ptr addrspace(1), i256)
declare i256 @llvm.evm.calldataload(ptr addrspace(2))

attributes #0 = { alwaysinline mustprogress nofree norecurse nosync nounwind readnone willreturn }
