//! {
//!   "cases": [
//!     {
//!       "name": "zero_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "0"
//!           ],
//!           "caller": "0x8E5708366C66291E44975Ff2E54589947F5f7E2F"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "zero_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "1"
//!           ],
//!           "caller": "0x72f7b6251763766E5244a39dB5C6e60dC2F72f71"
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
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "0"
//!           ],
//!           "caller": "0x0B2044BBC7064DC89f888Ee27BC32Cc7e29da3cf"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "one_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "1"
//!           ],
//!           "caller": "0xD334582c125c05E3e5B9534736463b749E724F2d"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "zero_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "433478394034343"
//!           ],
//!           "caller": "0xCf03Dd0a894Ef79CB5b601A43C4b25E3Ae4c67eD"
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
//!           "method": "main",
//!           "calldata": [
//!             "121563127839120",
//!             "0"
//!           ],
//!           "caller": "0x64525e042465D0615F51aBB2982Ce82B8568Bcc4"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "one_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "433478394034343"
//!           ],
//!           "caller": "0x499F455FEd78a78fD462a617974Fa494Fa31D000"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "121563127839120",
//!             "1"
//!           ],
//!           "caller": "0xeD586912a780edD9Aa015796981118daC66B84ac"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "3456789009876545678",
//!             "45116789098765678"
//!           ],
//!           "caller": "0xbf3AE718410b3B1eaAaD9c3cE6085c8B517A9DF0"
//!         }
//!       ],
//!       "expected": [
//!         "27913038370354150"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_to_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "15903955902367335447395448984",
//!             "67897657890876"
//!           ],
//!           "caller": "0x3189b1381Ba3913f3b62A45e89C6d373C6BC4043"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_plus_one_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0x0b000000000000000000000000000000000000000000000000000000000000a2",
//!             "0x0b000000000000000000000000000000000000000000000000000000000000a1"
//!           ],
//!           "caller": "0x71fc59cfe7f467e0675249fC8af7A3B053aAe250"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_equals",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "6873546235472354672354762358492378590345034805934590348534",
//!             "6873546235472354672354762358492378590345034805934590348534"
//!           ],
//!           "caller": "0x619f4dc298E509262870973037f891bFBC38bE34"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_plus_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0x0b000000000000000000000000000000000000000000000000000000000000a1",
//!             "0x0b000000000000000000000000000000000000000000000000000000000000a2"
//!           ],
//!           "caller": "0x57079D5ca461b0021bf873aE0f9a9C71BDaa5D51"
//!         }
//!       ],
//!       "expected": [
//!         "0x0b000000000000000000000000000000000000000000000000000000000000a1"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_bigger_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "456789098765467892304234234234234234234",
//!             "7863249563247857289401203492047823764573465734573434537783"
//!           ],
//!           "caller": "0x2b59fb9E6BaaBc78dE65a10B8789767C435748BD"
//!         }
//!       ],
//!       "expected": [
//!         "456789098765467892304234234234234234234"
//!       ]
//!     },
//!     {
//!       "name": "zero_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0xc70f574a31867b4f4E1b63Acc4E442eA999746F4"
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
//!           "method": "main",
//!           "calldata": [
//!             "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "0"
//!           ],
//!           "caller": "0xDDAc8b59e3e6b9B506aAB757e13E819906e5aAB0"
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
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0xB9710E1a68DC39e63f1320f7c7fd269F2F524203"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "max_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "1"
//!           ],
//!           "caller": "0x735a43e152bEa2eA76080d6fc7aee35F00C22562"
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
//!           "method": "main",
//!           "calldata": [
//!             "7437834752357434334343423343443375834785783474",
//!             "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0xeD56BFd0ba75A5B5940346EeEAB8c34925C71bdC"
//!         }
//!       ],
//!       "expected": [
//!         "7437834752357434334343423343443375834785783474"
//!       ]
//!     },
//!     {
//!       "name": "max_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "23784273472384723848213821342323233223"
//!           ],
//!           "caller": "0xF96ae6A0022a5a14F356f20BB43d12f188A50d29"
//!         }
//!       ],
//!       "expected": [
//!         "15101022404869751666946096985411952473"
//!       ]
//!     },
//!     {
//!       "name": "max_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0x8D859929766A71E2F4558E40653887381441A848"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "zero_minus_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "-1"
//!           ],
//!           "caller": "0x59600aEe539bE42225A4a517A2A610c35916c035"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "minus_one_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-1",
//!             "0"
//!           ],
//!           "caller": "0x0f55e0E83584DF4ac48aaaaCE2c7898D0219a536"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "minus_one_minus_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-1",
//!             "-1"
//!           ],
//!           "caller": "0x49271625bEc0Df7DB6617675A6Ce9C468111d97E"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "zero_minus_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "-433478394034343"
//!           ],
//!           "caller": "0xC557E0b358D3A329E2F82a58f74c39700D946bCa"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "minus_ordinar_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-121563127839120",
//!             "0"
//!           ],
//!           "caller": "0xF3f14e7B9899E2795ECFa446f27175FbfA93C895"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "minus_one_minus_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-1",
//!             "-433478394034343"
//!           ],
//!           "caller": "0x3edc9b00399ADabaEEB5A95ef09e73B8156652B2"
//!         }
//!       ],
//!       "expected": [
//!         "-1"
//!       ]
//!     },
//!     {
//!       "name": "minus_ordinar_minus_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-121563127839120",
//!             "-1"
//!           ],
//!           "caller": "0x078ff59c8FD93A0212618D4915144fF54c8e9Ab3"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "minus_ordinar_minus_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-3456789009876545678",
//!             "-45116789098765678"
//!           ],
//!           "caller": "0x03AF066958931BA18D74056dc2C5F8D1E8Dd803C"
//!         }
//!       ],
//!       "expected": [
//!         "-27913038370354150"
//!       ]
//!     },
//!     {
//!       "name": "minus_ordinar_minus_ordinar_to_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-15903955902367335447395448984",
//!             "-67897657890876"
//!           ],
//!           "caller": "0x73c28DE5D8270496c9778586Dae4470a7faE1322"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "minus_ordinar_plus_one_minus_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-4975441334415930272106565762092058540570194653601742986070443062840017289378",
//!             "-4975441334415930272106565762092058540570194653601742986070443062840017289377"
//!           ],
//!           "caller": "0x9677bDf72A302937aEAEd7Eb2F38D07181FF8b0d"
//!         }
//!       ],
//!       "expected": [
//!         "-1"
//!       ]
//!     },
//!     {
//!       "name": "minus_ordinar_minus_ordinar_equals",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-6873546235472354672354762358492378590345034805934590348534",
//!             "-6873546235472354672354762358492378590345034805934590348534"
//!           ],
//!           "caller": "0x4e7CE35a9A156cda79b5A316665c1fE00Aa632dd"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "minus_ordinar_minus_ordinar_plus_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-4975441334415930272106565762092058540570194653601742986070443062840017289377",
//!             "-4975441334415930272106565762092058540570194653601742986070443062840017289378"
//!           ],
//!           "caller": "0xd97EbC6B168a8315734BBcfaFB67cf62Dfb17530"
//!         }
//!       ],
//!       "expected": [
//!         "-4975441334415930272106565762092058540570194653601742986070443062840017289377"
//!       ]
//!     },
//!     {
//!       "name": "minus_ordinar_bigger_minus_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-456789098765467892304234234234234234234",
//!             "-7863249563247857289401203492047823764573465734573434537783"
//!           ],
//!           "caller": "0x68f353b3d38C7A55dBD0dd5EE67F9d1157484c3e"
//!         }
//!       ],
//!       "expected": [
//!         "-456789098765467892304234234234234234234"
//!       ]
//!     },
//!     {
//!       "name": "zero_min",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "0x8000000000000000000000000000000000000000000000000000000000000000"
//!           ],
//!           "caller": "0x2451882043836dc4A4b51f6BbCC9d90695D802E1"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "min_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0x8000000000000000000000000000000000000000000000000000000000000000",
//!             "0"
//!           ],
//!           "caller": "0xDcA0cE9F7767F5504921801fCBB7F55AbcF70062"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "minus_one_min",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-1",
//!             "0x8000000000000000000000000000000000000000000000000000000000000000"
//!           ],
//!           "caller": "0xC460A383f22e61F8912fD8898C44592480db6a13"
//!         }
//!       ],
//!       "expected": [
//!         "-1"
//!       ]
//!     },
//!     {
//!       "name": "min_minus_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0x8000000000000000000000000000000000000000000000000000000000000000",
//!             "-1"
//!           ],
//!           "caller": "0x3e1c8FFBdB489c886ce21Bb444f027db483Ec3D6"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "minus_ordinar_min",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-7437834752357434334343423343443375834785783474",
//!             "0x8000000000000000000000000000000000000000000000000000000000000000"
//!           ],
//!           "caller": "0xB2A4BeC99d482C9da17C05e68914b620e3b722D1"
//!         }
//!       ],
//!       "expected": [
//!         "-7437834752357434334343423343443375834785783474"
//!       ]
//!     },
//!     {
//!       "name": "min_minus_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0x8000000000000000000000000000000000000000000000000000000000000000",
//!             "-23784273472384723848213821342323233223"
//!           ],
//!           "caller": "0xe348375BAc630C302565dA27765351a6E7fa145c"
//!         }
//!       ],
//!       "expected": [
//!         "-15101022404869751666946096985411952474"
//!       ]
//!     },
//!     {
//!       "name": "min_min",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0x8000000000000000000000000000000000000000000000000000000000000000",
//!             "0x8000000000000000000000000000000000000000000000000000000000000000"
//!           ],
//!           "caller": "0x88afBb721C1fc5CEd804218E0BE55872B6E2212D"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "one_minus_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "-1"
//!           ],
//!           "caller": "0x4636f4A634Be57fD86b830D5670453d59B9b48a0"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "minus_one_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-1",
//!             "1"
//!           ],
//!           "caller": "0xCD7EC8B821aC8d2225f1cc0a89d30517627D4F8e"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "one_minus_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "-433478394034343"
//!           ],
//!           "caller": "0xaF5EC811dc9FfaE517766312E0EaC1c5aE632D64"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "minus_one_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-1",
//!             "433478394034343"
//!           ],
//!           "caller": "0xB949Df77f0a28e4c18e4e525a49b2607b6e3Df52"
//!         }
//!       ],
//!       "expected": [
//!         "-1"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_minus_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "121563127839120",
//!             "-1"
//!           ],
//!           "caller": "0x7d4862efafD9359E1D638fa643Ac83ec0d8DC38b"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "minus_ordinar_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-121563127839120",
//!             "1"
//!           ],
//!           "caller": "0x9DCA8e31F5CCa14798F8A441C283dF57262c9810"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_minus_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "3456789009876545678",
//!             "-45116789098765678"
//!           ],
//!           "caller": "0x491CbDf6Bb943247fBbCE3Cebe4290b1206d7238"
//!         }
//!       ],
//!       "expected": [
//!         "27913038370354150"
//!       ]
//!     },
//!     {
//!       "name": "minus_ordinar_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-3456789009876545678",
//!             "45116789098765678"
//!           ],
//!           "caller": "0xd1D689a063B5d0E36a1f5D924109f46823d9bB20"
//!         }
//!       ],
//!       "expected": [
//!         "-27913038370354150"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_minus_ordinar_to_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "15903955902367335447395448984",
//!             "-67897657890876"
//!           ],
//!           "caller": "0xC4Bd65adc309A82B5c2E6072F2B3150e93107AE7"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "minus_ordinar_ordinar_to_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-15903955902367335447395448984",
//!             "67897657890876"
//!           ],
//!           "caller": "0x126E2306817728f49F2deF559BF156C4f297b992"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_plus_one_minus_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "4975441334415930272106565762092058540570194653601742986070443062840017289378",
//!             "-4975441334415930272106565762092058540570194653601742986070443062840017289377"
//!           ],
//!           "caller": "0x5D8Dbd8b80227B7D4e8f6B301cA4Cf79650c68BA"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "minus_ordinar_plus_one_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-4975441334415930272106565762092058540570194653601742986070443062840017289378",
//!             "4975441334415930272106565762092058540570194653601742986070443062840017289377"
//!           ],
//!           "caller": "0x0b5Ed3F10564ea78694b355C266C56530E3d2084"
//!         }
//!       ],
//!       "expected": [
//!         "-1"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_minus_ordinar_equals",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "6873546235472354672354762358492378590345034805934590348534",
//!             "-6873546235472354672354762358492378590345034805934590348534"
//!           ],
//!           "caller": "0xC3f5f5D94fD802a0121A27864b3359792B665a5A"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "minus_ordinar_ordinar_equals",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-6873546235472354672354762358492378590345034805934590348534",
//!             "6873546235472354672354762358492378590345034805934590348534"
//!           ],
//!           "caller": "0xDcE86A481C83309d6c799Fd416DDD4CeE21f3595"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_minus_ordinar_plus_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "4975441334415930272106565762092058540570194653601742986070443062840017289377",
//!             "-4975441334415930272106565762092058540570194653601742986070443062840017289378"
//!           ],
//!           "caller": "0xc5e58a7ce7FaE112685bf1D1989579e0d4a5b74F"
//!         }
//!       ],
//!       "expected": [
//!         "4975441334415930272106565762092058540570194653601742986070443062840017289377"
//!       ]
//!     },
//!     {
//!       "name": "minus_ordinar_ordinar_plus_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-4975441334415930272106565762092058540570194653601742986070443062840017289377",
//!             "4975441334415930272106565762092058540570194653601742986070443062840017289378"
//!           ],
//!           "caller": "0x97fA2b473a5920D4E4f3e5A7c4e782c4A62B91aC"
//!         }
//!       ],
//!       "expected": [
//!         "-4975441334415930272106565762092058540570194653601742986070443062840017289377"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_bigger_minus_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "456789098765467892304234234234234234234",
//!             "-7863249563247857289401203492047823764573465734573434537783"
//!           ],
//!           "caller": "0x4A22d5768835E4c0b4fb6585Ce31EBFb29D79FF8"
//!         }
//!       ],
//!       "expected": [
//!         "456789098765467892304234234234234234234"
//!       ]
//!     },
//!     {
//!       "name": "minus_ordinar_bigger_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-456789098765467892304234234234234234234",
//!             "7863249563247857289401203492047823764573465734573434537783"
//!           ],
//!           "caller": "0x91E1b448FAa65B69d3C51136b697992bB4538A43"
//!         }
//!       ],
//!       "expected": [
//!         "-456789098765467892304234234234234234234"
//!       ]
//!     },
//!     {
//!       "name": "one_min",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "0x8000000000000000000000000000000000000000000000000000000000000000"
//!           ],
//!           "caller": "0x2E49A845B42Fa917f8AB54567ef388AD3Fe35153"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "minus_one_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-1",
//!             "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0xB9574c1f2E78ce832B42D2d711496a37e165962b"
//!         }
//!       ],
//!       "expected": [
//!         "-1"
//!       ]
//!     },
//!     {
//!       "name": "max_minus_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "-1"
//!           ],
//!           "caller": "0xa19d6dA5BFECbCB54021e2DA4964b9d4c3c93c8E"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "min_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0x8000000000000000000000000000000000000000000000000000000000000000",
//!             "1"
//!           ],
//!           "caller": "0x227F1aB5D503D2C3dc2138367C6968614ac4825E"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_min",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "7437834752357434334343423343443375834785783474",
//!             "0x8000000000000000000000000000000000000000000000000000000000000000"
//!           ],
//!           "caller": "0xf48e7BbC6ce01e07218f3DaFdA042eA6EafBFB91"
//!         }
//!       ],
//!       "expected": [
//!         "7437834752357434334343423343443375834785783474"
//!       ]
//!     },
//!     {
//!       "name": "minus_ordinar_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-7437834752357434334343423343443375834785783474",
//!             "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0x8a0ee29276B30FDebc1f2C105Db224b9d0212849"
//!         }
//!       ],
//!       "expected": [
//!         "-7437834752357434334343423343443375834785783474"
//!       ]
//!     },
//!     {
//!       "name": "max_minus_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "-23784273472384723848213821342323233223"
//!           ],
//!           "caller": "0x5C0EF1f2D55DB034B36fb78471B0868534BCb5C3"
//!         }
//!       ],
//!       "expected": [
//!         "15101022404869751666946096985411952473"
//!       ]
//!     },
//!     {
//!       "name": "min_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0x8000000000000000000000000000000000000000000000000000000000000000",
//!             "23784273472384723848213821342323233223"
//!           ],
//!           "caller": "0x1dEE72678d7DC513251a5EabC662e96fBccDba15"
//!         }
//!       ],
//!       "expected": [
//!         "-15101022404869751666946096985411952474"
//!       ]
//!     },
//!     {
//!       "name": "max_min",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "0x8000000000000000000000000000000000000000000000000000000000000000"
//!           ],
//!           "caller": "0x3c6F8b43450A394f9D2B17A5897A26417D4Ca6fA"
//!         }
//!       ],
//!       "expected": [
//!         "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!       ]
//!     },
//!     {
//!       "name": "min_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0x8000000000000000000000000000000000000000000000000000000000000000",
//!             "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0x442A16aAEc010076CA5b10Ec8B8df6515e7cDEa8"
//!         }
//!       ],
//!       "expected": [
//!         "-1"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(int256 a, int256 b) external pure returns(uint256 result) {
        assembly {
            result := smod(a, b)
        }
    }
}
