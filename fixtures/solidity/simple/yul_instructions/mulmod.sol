//! {
//!   "cases": [
//!     {
//!       "name": "zero_zero_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "0",
//!             "0"
//!           ],
//!           "caller": "0x77fb85b9fe9f2da7e52a0475dc1f9e9264da13ae"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "zero_one_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "1",
//!             "0"
//!           ],
//!           "caller": "0x01298bd086b7e1c73df70313aa3f8b0cbcf94c34"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "one_zero_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "0",
//!             "0"
//!           ],
//!           "caller": "0x877e05c4a345f1f161ac5880882da14c3f3084bc"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "one_one_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "1",
//!             "0"
//!           ],
//!           "caller": "0x429a1add4fe659bca32c8ee82673d21d652b5067"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "zero_ordinar_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "433478394034343",
//!             "0"
//!           ],
//!           "caller": "0x472678022927894035d158d8f3acce2b91e13d3e"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_zero_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "121563127839120",
//!             "0",
//!             "0"
//!           ],
//!           "caller": "0x2de4a17024d465c9f84132e8d1a39f08cf198fa7"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "one_ordinar_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "433478394034343",
//!             "0"
//!           ],
//!           "caller": "0xaca413c88febb886c71126d9a658123608525071"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_one_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "121563127839120",
//!             "1",
//!             "0"
//!           ],
//!           "caller": "0xf6b00af6035e93b2a275bbfe7df21fb3f984e521"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "451167890987656789",
//!             "3456789009876545678",
//!             "0"
//!           ],
//!           "caller": "0x1f7b97bf0407489f9528afd9644d8ae5093f855a"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_to_max_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0x00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "0x0000000000000000000000000000000100000000000000000000000000000001",
//!             "0"
//!           ],
//!           "caller": "0x7d0cbf400d459cd2c9ac5d160657fdc92ab790e1"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_min_overflow_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0x0000002000000000000000000000000000000000000000000000000000000000",
//!             "0x0000000000000000000000000000000000000000000000000000000008000000",
//!             "0"
//!           ],
//!           "caller": "0xfa896524e78f70d2956d2c3f7d47699790505b74"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_overflow_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "2345678909876543212345678909876543212345678909876543",
//!             "23456789098765432123456789876543212345678987654321",
//!             "0"
//!           ],
//!           "caller": "0x79ac3045e055850b59a0e1d025f424ba0302153a"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "zero_max_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "0"
//!           ],
//!           "caller": "0xef0347d4255bc2705dad1f3a7eb50dec34b48a3e"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "max_zero_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "0",
//!             "0"
//!           ],
//!           "caller": "0x310533898dfa89141319d42bfc92544f7bdd72da"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "one_max_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "0"
//!           ],
//!           "caller": "0x7158322b86bee511055203dc5bebc0f1841236ec"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "max_one_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "1",
//!             "0"
//!           ],
//!           "caller": "0x1526f1fcb09abc7ca27d0d5e044e7ea6fd1d1be6"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_max_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "7437834752357434334343423343443375834785783474",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "0"
//!           ],
//!           "caller": "0xcbc26f6f9fa1446df9f28f0d53dba50beff0f998"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "max_ordinar_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "23784273472384723848213821342323233223",
//!             "0"
//!           ],
//!           "caller": "0x415624d42bcd86cea7a072a02b52402b6abdac55"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "max_max_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "0"
//!           ],
//!           "caller": "0x1734cde6e579e5b8c77d3845a89d28dc2795d86b"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "zero_zero_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "0",
//!             "1"
//!           ],
//!           "caller": "0x82d5a0390c2bee69f302e59ac1616a714d898368"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "zero_one_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "1",
//!             "1"
//!           ],
//!           "caller": "0xffd9409666f76bfadc6f57cff831158cd6908262"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "one_zero_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "0",
//!             "1"
//!           ],
//!           "caller": "0xb68cc5ff4e8b324a85862d6fb5dba8e65c75f957"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "one_one_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "1",
//!             "1"
//!           ],
//!           "caller": "0xe0c87075423c370f6b33e4f1f7ca0cc9e34d5c0d"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "zero_ordinar_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "433478394034343",
//!             "1"
//!           ],
//!           "caller": "0x0b1f9444929ea3e1c72cc72276c30d0f7551ddff"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_zero_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "121563127839120",
//!             "0",
//!             "1"
//!           ],
//!           "caller": "0xaf02b98ad8f83e622ed1145ecdb21189d596cb04"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "one_ordinar_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "433478394034343",
//!             "1"
//!           ],
//!           "caller": "0xd949315ed5a313f2a83389d2d4742d5a5d3b49a8"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_one_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "121563127839120",
//!             "1",
//!             "1"
//!           ],
//!           "caller": "0x2b1b999928bc2dd2464b41f6b58f8f675d4aa554"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "two_one_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "2",
//!             "1",
//!             "1"
//!           ],
//!           "caller": "0x9e812641ae2a1a051d4c6502edabcd406874f3c7"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "451167890987656789",
//!             "3456789009876545678",
//!             "1"
//!           ],
//!           "caller": "0xd5cab0597e281b232887f927cf5d82fc9ece9e4d"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_to_max_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0x00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "0x0000000000000000000000000000000100000000000000000000000000000001",
//!             "1"
//!           ],
//!           "caller": "0x61df23ff31a0ff710e2896da3a7fb8327d4f7a2e"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_min_overflow_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0x0000002000000000000000000000000000000000000000000000000000000000",
//!             "0x0000000000000000000000000000000000000000000000000000000008000000",
//!             "1"
//!           ],
//!           "caller": "0x865f05f1a882adc9325a5acdfcfdef0f7d093851"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_overflow_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "2345678909876543212345678909876543212345678909876543",
//!             "23456789098765432123456789876543212345678987654321",
//!             "1"
//!           ],
//!           "caller": "0xcd3e1569361f9b4dc58a473c2e64c8c49fbf43f9"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "zero_max_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "1"
//!           ],
//!           "caller": "0x16af67370a4ab86ee43e224c8a117359451504e0"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "max_zero_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "0",
//!             "1"
//!           ],
//!           "caller": "0xfe75ac338d28204509741a7759f7982a4539155d"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "one_max_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "1"
//!           ],
//!           "caller": "0xf7d2f422509c4b36d91b63e8dbffe68acb5eace1"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "max_one_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "1",
//!             "1"
//!           ],
//!           "caller": "0x2dbe72dc6870ba195619b29355bdf8640dabc6a7"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_max_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "7437834752357434334343423343443375834785783474",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "1"
//!           ],
//!           "caller": "0x1aa4028178610f3ffd67d6f22b7a237896ec842d"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "max_ordinar_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "23784273472384723848213821342323233223",
//!             "1"
//!           ],
//!           "caller": "0xcd5ef6ca31f2644f266a8d936844ab175d77cb0e"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "max_max_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "1"
//!           ],
//!           "caller": "0x01dd7ca210b993ce4d94f54bfe67d1f51fd4ec2b"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "zero_zero_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "0",
//!             "6734895437463543785934736452323748923482347623542634728"
//!           ],
//!           "caller": "0xbaee6821134d36dc8660849e691e7f2f70b54e54"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "zero_one_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "1",
//!             "6734895437463543785934736452323748923482347623542634728"
//!           ],
//!           "caller": "0xc5f46e6919e75a423d0550225293f7d3ae6cdf92"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "one_zero_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "0",
//!             "6734895437463543785934736452323748923482347623542634728"
//!           ],
//!           "caller": "0xd571116d6208340fd542fcf96a8f4c9525bcb8e7"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "one_one_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "1",
//!             "6734895437463543785934736452323748923482347623542634728"
//!           ],
//!           "caller": "0x4aceaaf502184e19a2860e36f99bbfec8d950ecb"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "zero_ordinar_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "385347583459430234923842734623542325264782394023482374625423",
//!             "6734895437463543785934736452323748923482347623542634728"
//!           ],
//!           "caller": "0xd2deebafe94e8830105ae048bafd8df71db5d738"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_zero_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "43873543534623235553423423423949234923947324723387478233",
//!             "0",
//!             "6734895437463543785934736452323748923482347623542634728"
//!           ],
//!           "caller": "0x0a062692dad2f46b694ae32e1ed68e9582ec2400"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "one_ordinar_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "8939384548956875984554349903434903490994494993020959",
//!             "6734895437463543785934736452323748923482347623542634728"
//!           ],
//!           "caller": "0x351ede6c998cdd1e9b2b56c416380f79de59e863"
//!         }
//!       ],
//!       "expected": [
//!         "8939384548956875984554349903434903490994494993020959"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_one_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "54367829174652819374654281934765281937468197465281947562815652819",
//!             "1",
//!             "6734895437463543785934736452323748923482347623542634728"
//!           ],
//!           "caller": "0xff39f5f473fd4174e80a31769490a299342bc0c6"
//!         }
//!       ],
//!       "expected": [
//!         "1122390563298694939482039005289855975809195069546337163"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "4511678909737783487438348343487656789",
//!             "3456789043333409876545678",
//!             "6734895437463543785934736452323748923482347623542634728"
//!           ],
//!           "caller": "0x77394b065fcf4b909364f4cc92ace3d83e4660ea"
//!         }
//!       ],
//!       "expected": [
//!         "5676430915488228986215146216393544180428262509017295078"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_ordinar_to_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "5893033507780600812692894395783280308047054170599805387",
//!             "18738036435609058585768",
//!             "6734895437463543785934736452323748923482347623542634728"
//!           ],
//!           "caller": "0x1c16d2bb49204d2c5d4716e804c8759a5a85a6b2"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_product_minus_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "143295647605607314594356094730292530286858460075375207",
//!             "47",
//!             "6734895437463543785934736452323748923482347623542634728"
//!           ],
//!           "caller": "0x44f8581b65f25e0ff8d3911b813eba7a47c3108f"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_product",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "4",
//!             "1683723859365885946483684113080937230870586905885658682",
//!             "6734895437463543785934736452323748923482347623542634728"
//!           ],
//!           "caller": "0xd491eb62562a7713437d822bb4f29368e853d726"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_product_plus_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "2244965145821181261978245484107916307827449207847544909",
//!             "3",
//!             "6734895437463543785934736452323748923482347623542634728"
//!           ],
//!           "caller": "0x6c530ab5a89c1e7a9c362abacc3c9fb8667dc09e"
//!         }
//!       ],
//!       "expected": [
//!         "6734895437463543785934736452323748923482347623542634727"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_ordinar_bigger_product",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "4567892342342234534234",
//!             "3423423436457597665235",
//!             "6734895437463543785934736452323748923482347623542634728"
//!           ],
//!           "caller": "0x2eea3615b0f7c212e47b32d76715529981c2497d"
//!         }
//!       ],
//!       "expected": [
//!         "15637829699989597708005861762222266079154990"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_to_max_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0x00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "0x0000000000000000000000000000000100000000000000000000000000000001",
//!             "6734895437463543785934736452323748923482347623542634728"
//!           ],
//!           "caller": "0x65f968236cebbb9da624014f0ac302fe892d3576"
//!         }
//!       ],
//!       "expected": [
//!         "5205817307728658054337357463547686623259643155181961175"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_min_overflow_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0x0000002000000000000000000000000000000000000000000000000000000000",
//!             "0x0000000000000000000000000000000000000000000000000000000008000000",
//!             "6734895437463543785934736452323748923482347623542634728"
//!           ],
//!           "caller": "0xbec183925312ac996df19e2e89681ae1ae6c07c0"
//!         }
//!       ],
//!       "expected": [
//!         "5205817307728658054337357463547686623259643155181961176"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_overflow_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "2345678909876543212345678909876543212345678909876543",
//!             "23456789098765432123456789876543212345678987654321",
//!             "6734895437463543785934736452323748923482347623542634728"
//!           ],
//!           "caller": "0x15260ef36e3cf7bcca7c3f210197a53caafbf2d3"
//!         }
//!       ],
//!       "expected": [
//!         "4264809475174460139372937695722005330348657185160810887"
//!       ]
//!     },
//!     {
//!       "name": "zero_max_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "6734895437463543785934736452323748923482347623542634728"
//!           ],
//!           "caller": "0x5659991e4c20461cdf2a11e6ecdf718569ae6383"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "max_zero_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "0",
//!             "6734895437463543785934736452323748923482347623542634728"
//!           ],
//!           "caller": "0xdeeaf129d9eea2d16061e348bf5cf73271b394b3"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "one_max_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "6734895437463543785934736452323748923482347623542634728"
//!           ],
//!           "caller": "0x038786ab7874a81bffa29b3a2f2335e82a3e7df5"
//!         }
//!       ],
//!       "expected": [
//!         "5205817307728658054337357463547686623259643155181961175"
//!       ]
//!     },
//!     {
//!       "name": "max_one_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "1",
//!             "6734895437463543785934736452323748923482347623542634728"
//!           ],
//!           "caller": "0x6054b5c1b23dae0c8de3728648e596c67028f1a6"
//!         }
//!       ],
//!       "expected": [
//!         "5205817307728658054337357463547686623259643155181961175"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_max_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "7437834752357434334343423342323233245234534443443375834785783474",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "6734895437463543785934736452323748923482347623542634728"
//!           ],
//!           "caller": "0xfe242e9c1db34c75dd470e3d66634f125e273119"
//!         }
//!       ],
//!       "expected": [
//!         "5617213867212480757578809585112783067547734929923987190"
//!       ]
//!     },
//!     {
//!       "name": "max_ordinar_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "23784273472384723848213821342323233223",
//!             "6734895437463543785934736452323748923482347623542634728"
//!           ],
//!           "caller": "0x62644f61a69e9c4fa4b116c68b5003a03e647516"
//!         }
//!       ],
//!       "expected": [
//!         "3578153470724301227568936858877098024097400680412702913"
//!       ]
//!     },
//!     {
//!       "name": "max_max_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "6734895437463543785934736452323748923482347623542634728"
//!           ],
//!           "caller": "0xbccdb66e8dae30e6a1cababc97b02df6726c6449"
//!         }
//!       ],
//!       "expected": [
//!         "1846270932306819610647429224033438799896242185499682409"
//!       ]
//!     },
//!     {
//!       "name": "zero_zero_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "0",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0x1130aa379363d911bb6c78b00d733bc955b70218"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "zero_one_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "1",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0x8f6a73eb7903bc002c5edd894d2b4e693f852292"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "one_zero_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "0",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0x473f9fc768dbc34f5a5a38a5a732efb77c08c462"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "one_one_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "1",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0xa1832c18b3a2c1872ddc703ee5e1133eb86a4223"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "zero_ordinar_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "385347583459430234923842734623542325264782394023482374625423",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0x8eaeb770b10942672090525bd4121ccaeb75110d"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_zero_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "43873543534623235553423423423949234923947324723387478233",
//!             "0",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0xbf00ead8dbc543ea7a7b220a64e6133a2d219f79"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "one_ordinar_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "8939384548956875984554349903434903490994494993020959",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0x04dc21a46728346cb5ef50bbb8bf8e42e6fd98d7"
//!         }
//!       ],
//!       "expected": [
//!         "8939384548956875984554349903434903490994494993020959"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_one_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "54367829174652819374654281934765281937468197465281947562815652819",
//!             "1",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0xe7e87cd01286b60cc9e3cbb60c393593ff8dcd5c"
//!         }
//!       ],
//!       "expected": [
//!         "54367829174652819374654281934765281937468197465281947562815652819"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "4511678909737783487438348343487656789",
//!             "3456789043333409876545678",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0xcddb9dc3d61a6a53d2ba8dff35aa754088b08bd2"
//!         }
//!       ],
//!       "expected": [
//!         "15595922222219994270792624200954893890665171031928705745307942"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_to_max_minus_one_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "14",
//!             "8270863516951156815969356072049136275233570333260040288532684571993794974281",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0xa5573fecea01d1eb3e448917eda9011bd8d227b5"
//!         }
//!       ],
//!       "expected": [
//!         "0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_to_max_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0x00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "0x0000000000000000000000000000000100000000000000000000000000000001",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0x64c6cb97a7d7ebb07d41be6feb20f280704162cd"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_min_overflow_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0x0000002000000000000000000000000000000000000000000000000000000000",
//!             "0x0000000000000000000000000000000000000000000000000000000008000000",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0x5ae1ac004e4c5f6f7fac7017cec99f0612b43431"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_overflow_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "2345678909876543212345678909876543212345678909876543",
//!             "23456789098765432123456789876543212345678987654321",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0x5793e629c061e7fd642ab6a1b4d552cec0e2d606"
//!         }
//!       ],
//!       "expected": [
//!         "109870817467274783132168917047078478060902558898874810394629740062300719137698"
//!       ]
//!     },
//!     {
//!       "name": "zero_max_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0xe89476b7cc8fa1e503f2ae4a43e53eda4bfbac07"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "max_zero_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "0",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0x8c36830398659c303e4aedb691af8c526290452a"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "one_max_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0x431039e7b144d6e46c8e98497e87a5da441c7abe"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "max_one_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "1",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0x82ef7751a5460bc10f731558f0741705ba972f4e"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_max_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "7437834752357434334343423342323233245234534443443375834785783474",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0xffb044cd928c1b7ef6cc15932d06a9ce3351c2dc"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "max_ordinar_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "23784273472384723848213821342323233223",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0x23dcbe0323605a7a00ce554babcff197baf99b10"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "max_max_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0xf45aedd5299d16440f67efe3fb1e1d1dcf358222"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(uint256 a, uint256 b, uint256 c) external pure returns(uint256 result) {
        assembly {
            result := mulmod(a, b, c)
        }
    }
}
