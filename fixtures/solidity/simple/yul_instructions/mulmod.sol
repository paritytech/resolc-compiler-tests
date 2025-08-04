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
//!           "caller": "0xd2619Add9e5f23c2d71DA0910a8f7Db5214C51b9"
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
//!           "caller": "0xCC8b203a21Def5550ABF9EBbEdaf515aE7c8f81b"
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
//!           "caller": "0xC78530d922d853Cb9F51D649Da90f8B5459db49F"
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
//!           "caller": "0x065CA689C92b6E85D445108A2A80Bd9bde67f8C7"
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
//!           "caller": "0x04D98644d9Aa66d1E9E61138f952ba2423a1b951"
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
//!           "caller": "0x0b305e944677928108a54A007e3a7C92e4D808Ad"
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
//!           "caller": "0xA2C0902Ed91C8F5d7F2a15036E289f449BED0768"
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
//!           "caller": "0xa5b6c3236A1E1b1369117e66CDEa6F9bA7885ee2"
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
//!           "caller": "0x8e7723283775692561855bFf5ceCC1e07BE7f22A"
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
//!           "caller": "0x37aB1B2ECd0C6102943D4306724C72b87fb8c5F7"
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
//!           "caller": "0x22FE5A5EeD04C44896F8736E0F5102a28EB9DD31"
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
//!           "caller": "0xE914B42332ec4a8a36E67413F656B23786b5B054"
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
//!           "caller": "0x74e24D0F0cdB7658E7BB795929264b70cf718Df4"
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
//!           "caller": "0x66c58CcFBCe2047c1fef160c451b35467b329402"
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
//!           "caller": "0x1104795e6ACCbC7B80461e7F285f39b8803e3141"
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
//!           "caller": "0xa37CB9573c92c72414EF60aA804bdF16d56b5a66"
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
//!           "caller": "0xfa9ccd7C223bA4D1b644325B1BF261039aF42ECc"
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
//!           "caller": "0x8F59545226fB4D7522953BAd1f4FC7D3C507172f"
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
//!           "caller": "0xbAa79E81fE88A4FC86DFC66AFDBCC8E53b9bD6AA"
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
//!           "caller": "0x076cAC090BFaAF3a435Ed2dC5d83F60b7C304E1F"
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
//!           "caller": "0xC4a4838a7f8Ec02C1fF02AFa37d1BE24EEb6ae24"
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
//!           "caller": "0x61c92120565874ebc66b90797530874B6e23446f"
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
//!           "caller": "0x2BFD86C592Cb9c38b4DE5281b4D80D833dc345Fd"
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
//!           "caller": "0x4cb15453DFA8Ae2E3E89dB487A5E9314575ccbDc"
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
//!           "caller": "0xF093c6146d0F2963ea92334A832B53FBcC93f81a"
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
//!           "caller": "0x368B14E4544A4c6C1d20c56D6C48c9808242ECfF"
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
//!           "caller": "0x8DBC7C940e8376cf979db756Ac66a7566A70c6AE"
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
//!           "caller": "0xEe2a0825101b8493c86390a664b17d7A5b97c05B"
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
//!           "caller": "0xf2bAB04Df47426F699fcA64890847B4a03997280"
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
//!           "caller": "0xbDa610d5B4ad13dEB35bd3065876EB822284646F"
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
//!           "caller": "0x4b5CD2FB963CC5d34b08854c205fCeBce92BCA2b"
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
//!           "caller": "0xdBF7bEfE0420A6FcE7cC2688b4DF5e01710DA8b6"
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
//!           "caller": "0x8cBBde9Fc2F06C9a12F6216E6e78E1712bCF15Ef"
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
//!           "caller": "0xBCBF37D0AE9ddfC39Aef7a091F1eeCA78e0b583F"
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
//!           "caller": "0xa4944A8C4450EcAbf330518050529eFb6a1c8f95"
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
//!           "caller": "0x27841eA091bA9A2Ad6b9F45A69152f29b7595b31"
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
//!           "caller": "0x9b07Ce1C8C9C17480CA0411FA82F474168eb10e1"
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
//!           "caller": "0x28d9d3763c050E1c3A8d1BD95d83B3DF9Be647C5"
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
//!           "caller": "0x2fCdf6f69ee44969588e977CbA3CE9fB60f74c64"
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
//!           "caller": "0x3e8D9577Df1371cA9E8eDfE1557b193E09a7Dda9"
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
//!           "caller": "0xEfC6cA0e69639e21aBCD4a008F6250fE6aA77308"
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
//!           "caller": "0x96650b010445a625664AE15F2D797ebaB706f815"
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
//!           "caller": "0x908A4c5C1cC0f1178457C2A843F2F3bf66494E4c"
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
//!           "caller": "0x3dE0928C596534B117ae1f5c8b8ae0859cB5fc7b"
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
//!           "caller": "0x815d6889029687196dcd48Bb24CcFD1673d81B79"
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
//!           "caller": "0x97017B14016F143710Aa54B573F1040BCdaC5509"
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
//!           "caller": "0xC196EF8B13B765890c2Dc0134333f1AE1aB3faEE"
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
//!           "caller": "0x5eD98B398dC8a6dDBD864cb56860DC69d62A41BD"
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
//!           "caller": "0xE0587801924C4959Baa3BE2882E4E0FAB3BB5D8A"
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
//!           "caller": "0xBB361C28aeF33c20a902D6D7E094f5b4c5E5Ec9B"
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
//!           "caller": "0xD12117082A394696250438b84394fE11a426DCdb"
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
//!           "caller": "0xbBF713DbFc0f6D09A5b7f729c26aeA0E481C0DCB"
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
//!           "caller": "0x5F747f5250fD12dD30F72d38eF0ca386F7E6CCfb"
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
//!           "caller": "0x440562aB2e386361A1845bF2A6D1d7F9c8CCB9fc"
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
//!           "caller": "0xA29073ebc885BD29a65977C9C88BBd6D2B668589"
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
//!           "caller": "0x99957094f950596E779cA7cE47CF77ba8b58501a"
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
//!           "caller": "0x356C46FF9d74FBC0eb07f63DE527492b79A41c3a"
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
//!           "caller": "0x1D6eb87ebdE990E7a671203CBcd98F9C08022cd7"
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
//!           "caller": "0xf787Ce3e4C01e079395c5E7d03e4675b809dc28E"
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
//!           "caller": "0x5f5b587365224eAef4eA666f743E8aCB05138879"
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
//!           "caller": "0x13F4DCdedBbd8903e6D9a0720Fd499b857Ca10F6"
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
//!           "caller": "0x19C2BE76CD5a056cC22A74aF523b8A23DAbA12C7"
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
//!           "caller": "0x1528d04D82fff05d857BA0e2AfBE8Da51Ee32d82"
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
//!           "caller": "0x2c555Eae6Ef6DC34FAB5A2F1bfa76A5B968f7BA1"
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
//!           "caller": "0x9b7A69E4d01B3F7434519718C338B5b5B45035c8"
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
//!           "caller": "0x7f30A0DF4C0969307b39f46Ad7FA6e778FddED23"
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
//!           "caller": "0x329678A7A3e3bCf9f2AA4036BCBBA1B9E8a1A4fB"
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
//!           "caller": "0x0d6fC03bF50e4B87428Ce87aaC203cb845b7E535"
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
//!           "caller": "0xD0618561109cE261a2e724ab9f4d8062150FcfFF"
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
//!           "caller": "0x89d0DC7995dd6F7D1FBA8cbEcFA8DCFE2BFd4714"
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
//!           "caller": "0x2bd9cB879a53460d855114fFc9EA61b7f9B80363"
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
//!           "caller": "0x9D0d7e324F2d17fCfCD84BFBcD06602d40cE0Ce6"
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
//!           "caller": "0x2E797e8C7A8fc6b84916537DCC1BbE5CA72BE8Bd"
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
//!           "caller": "0xE4F551dAd36ef8ab4097f1cA82C68Ee74CCcBC9c"
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
//!           "caller": "0x0c01c625EaA9790Ddd9751cb266Cb4847342Db79"
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
//!           "caller": "0xE632E046cFBaF8F465770c912EeaEbB590b372AC"
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
//!           "caller": "0x699738a508FCF1d465F550A1C08CC028B3d54CFD"
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
//!           "caller": "0x338B5FdEA17179BE2D142a7d977ce4D086bc650D"
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
//!           "caller": "0x03Dc8D9893E225877B0873aaEc5c187a57B5AEf2"
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
//!           "caller": "0x4DEAdaD078169AD40DebA971FD2BC6BF3fA83d3C"
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
//!           "caller": "0x34971496706aEfCADb5E2027f98f5BE855361d3c"
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
//!           "caller": "0xDf4072F73e8d46d61C22B07cf9F4AFa441192d1d"
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
//!           "caller": "0xFe1a5bf22E4CaEc80F29f33fF8Ae2B1dE9d332B0"
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
