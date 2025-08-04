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
;!           "caller": "0xe7bb2318b36e5Ba1f1fCE0308Ab62C5940a67D6f"
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
;!           "caller": "0xE7Bd9969a555D16d2DD11a4c537De594429E09a8"
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
;!           "caller": "0x7951edF6F42d6d628a970d1adCed7828b0D9F0Fe"
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
;!           "caller": "0x1cF26b7eB3472b4f5A0389faA27A1d9c57bd3a19"
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
;!           "caller": "0x803161946156172f54438F8998C83D3088659a1F"
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
;!           "caller": "0xEeB90cBA280eDa972C271dd15B693C53eEcF22Bd"
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
;!           "caller": "0x1623620B09c9A083604366118aDe1Ee7dE26Ea62"
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
;!           "caller": "0x7711Bf238973811DD17CbF7067cB59d2BBa77b17"
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
;!           "caller": "0x537F5EaA752151C8d59cD61b5068653a82dD0AdB"
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
;!             "0xfafffffffffffffffffffffffffffffffffffffffffffffffffffffff4ffffff",
;!             "0x050000000000000000000000000000000000000000000000000000000b000000",
;!             "0"
;!           ],
;!           "caller": "0x5fE690ca61059Bd5d0105e7101e3d9E77a9A8F51"
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
;!             "0xab000000000000000000000000000000000000000000000000000000000000a1",
;!             "0x54ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff5f",
;!             "0"
;!           ],
;!           "caller": "0x1FD4f1F9fa6B972eAD4E04C6e4f900ef707e4166"
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
;!             "0x2fff1ffffffffff5ffffff0fffffffff2ffffffafffafffcffff1ff234ffffff",
;!             "0xef231ffffffffff4f12fff34ffffffff2fffffbbfffafffdffff22f538ffffff",
;!             "0"
;!           ],
;!           "caller": "0xa5CA0378dEf32737ef39D36604f9E4e6D83230a4"
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
;!           "caller": "0xD6cF387A011E7Dc45bde363121A89a58A83aDa83"
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
;!           "caller": "0x43514A451Db7C7Cf5715323c7e3585d4dF2E6c2B"
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
;!           "caller": "0xDF75569C281fb5395cdd5B0477A8c35507fdb308"
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
;!           "caller": "0x54E4948130626438434ADe7c0A99636ED1800fFb"
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
;!           "caller": "0x434D2bF60c5A3f36B0D0EAD97c929Ce4D2B76Fb8"
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
;!           "caller": "0x26E42056Bab5baC8E6F9276d3E4f5017b637dcf8"
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
;!           "caller": "0x79A8df792BD52E2aA648CC70C5d8CC3C10D33C98"
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
;!           "caller": "0xF31932A23E1755Cb987eaA02770D56b32e66A800"
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
;!           "caller": "0x868911247acbE075c4444d8039bb8aCbF1c97aB4"
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
;!           "caller": "0x87b7815d335563BC4BbadB4E44aFD48c592Fb0e9"
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
;!           "caller": "0x69586F875ff1eFb5b7EB0424FeAEbFd8a4B7385f"
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
;!           "caller": "0xe6fD8fe3b9C5A156Cfacbe340df194BBE627d4e6"
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
;!           "caller": "0xF5449B4c02922b2a43f01362299997A8BFbbC858"
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
;!           "caller": "0x4ca8F5355E8EfdeDDC5a4E794323840e7c540E81"
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
;!           "caller": "0xF87436C572b22aC8bFf5D1f3fDc8f1Dd5f58BceC"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "two_zero_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "2",
;!             "0",
;!             "1"
;!           ],
;!           "caller": "0xe324b29e47ecFeA6f19Cbd835584C216F986c89c"
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
;!           "caller": "0xCBD9F9500182693BfE7Fc7b477A16D3335fF993E"
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
;!             "0xfafffffffffffffffffffffffffffffffffffffffffffffffffffffff4ffffff",
;!             "0x050000000000000000000000000000000000000000000000000000000b000000",
;!             "1"
;!           ],
;!           "caller": "0x6fB770f7683F75c4f27b738Ea2E01AFef76060FE"
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
;!             "0xab000000000000000000000000000000000000000000000000000000000000a1",
;!             "0x54ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff5f",
;!             "1"
;!           ],
;!           "caller": "0x49765E3B58690871bFC8bf4aBF54Fc394fE10C96"
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
;!             "0x2fff1ffffffffff5ffffff0fffffffff2ffffffafffafffcffff1ff234ffffff",
;!             "0xef231ffffffffff4f12fff34ffffffff2fffffbbfffafffdffff22f538ffffff",
;!             "1"
;!           ],
;!           "caller": "0x9BA914424913658c508bDB145828e2DeC4B6716e"
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
;!           "caller": "0x09d48AAC4Ca2Da40b2c99e417A4c9F7F4e7D5012"
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
;!           "caller": "0x400050068FCb7a37ef955ea82d8fc97635bb8eef"
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
;!           "caller": "0xDF17b819390E2A74a6452Af99550CB14AF8D26B4"
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
;!           "caller": "0x2BDA3a3FAcF4D346D1287E45e3b699Be7E81FA89"
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
;!           "caller": "0xA51d8D0977d89F70269DE3bD8b35143b4abCF296"
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
;!           "caller": "0xE74d29Ba16AF3bCa4C8D324cF0a718FAb37bEA80"
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
;!           "caller": "0x92dc26599b1708637762D831Bb255515492B3A0f"
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
;!           "caller": "0xcf51b1AEf0D39b2C3F77a51336cb20318F9dD09e"
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
;!           "caller": "0xE49392D42e383340db0CE6D9C4C629DE9a4C6A24"
;!         }
;!       ],
;!       "expected": [
;!         "1"
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
;!           "caller": "0x03637fe20279C948F23Fcfd03364d1227616E69C"
;!         }
;!       ],
;!       "expected": [
;!         "1"
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
;!           "caller": "0x0539f9D51d69A7f1AdF747fa62Da70939Db842Da"
;!         }
;!       ],
;!       "expected": [
;!         "2"
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
;!           "caller": "0xE31749D897d77489183A9AE3315039b62a682C9e"
;!         }
;!       ],
;!       "expected": [
;!         "3806109516113667800853767386706858816392394866986028175"
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
;!           "caller": "0x7F7704670b01e4235E547894Ff3A32883b06dEef"
;!         }
;!       ],
;!       "expected": [
;!         "3464170909841972837815004710006741383053238982131669865"
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
;!           "caller": "0x7aBeb331fEfCf53133575c30BbcB83BeF8fCa55c"
;!         }
;!       ],
;!       "expected": [
;!         "8939384548956875984554349903434903490994494993020960"
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
;!           "caller": "0xF242F87881f37EE44a553Dd825773d1336f66c34"
;!         }
;!       ],
;!       "expected": [
;!         "1122390563298694939482039005289855975809195069546337164"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_ordinar_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "8934583485834958423984923948923489238948923232849429834",
;!             "5743892143323342342342342342343234234234234233423432423",
;!             "6734895437463543785934736452323748923482347623542634728"
;!           ],
;!           "caller": "0xb2bad19AcF979263F33Eb58A1990601083e2c625"
;!         }
;!       ],
;!       "expected": [
;!         "1208684754231213194457793386619225626218462219187592801"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_ordinar_ordinar_to_zero",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "67345763475734785873485834858348958348582848238423848",
;!             "47076922298769071715669669331407893506027850516560019248",
;!             "6734895437463543785934736452323748923482347623542634728"
;!           ],
;!           "caller": "0xDc1aEC70fBd340CCCcfdFEE315B79470C0d184cE"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_ordinar_sum_minus_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "2627823478238423324723748234889489238948234823848237723",
;!             "4107071959225120461210988217434259684534112799694397006",
;!             "6734895437463543785934736452323748923482347623542634728"
;!           ],
;!           "caller": "0x709C53bE8065617B12a1b8f8364075F235dA1903"
;!         }
;!       ],
;!       "expected": [
;!         "1"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_ordinar_sum",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "78534387453485348583489583489583495834858934985982398",
;!             "6656361050010058437351246868834165427647488688556652330",
;!             "6734895437463543785934736452323748923482347623542634728"
;!           ],
;!           "caller": "0xac580E627F1bC7d2E3D47C07f11F3704DAC5d065"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_ordinar_sum_plus_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "2745764578678457867485678478567845576875845678454554545",
;!             "3989130858785085918449057973755903346606501945088080182",
;!             "6734895437463543785934736452323748923482347623542634728"
;!           ],
;!           "caller": "0x6f1d0b8d28116912206646060AbC3Cc0A6eA9e07"
;!         }
;!       ],
;!       "expected": [
;!         "6734895437463543785934736452323748923482347623542634727"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_ordinar_ordinar_bigger_sum",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "4567890987654678923042342342342342234534234",
;!             "34234234322332342356457567897665235",
;!             "6734895437463543785934736452323748923482347623542634728"
;!           ],
;!           "caller": "0x026895fdC6a8a9aBf6ccF3f7d9E44EafCF673b71"
;!         }
;!       ],
;!       "expected": [
;!         "4567891021888913245374684698799910132199469"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_ordinar_to_max_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xfafffffffffffffffffffffffffffffffffffffffffffffffffffffff4ffffff",
;!             "0x050000000000000000000000000000000000000000000000000000000b000000",
;!             "6734895437463543785934736452323748923482347623542634728"
;!           ],
;!           "caller": "0xcC95B781e1FCeD77ca8A59C122B92F1955568117"
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
;!             "0xab000000000000000000000000000000000000000000000000000000000000a1",
;!             "0x54ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff5f",
;!             "6734895437463543785934736452323748923482347623542634728"
;!           ],
;!           "caller": "0x84AF6d24F14fdf9fFc0f3358280d9F0B3f9550b4"
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
;!             "0x2fff1ffffffffff5ffffff0fffffffff2ffffffafffafffcffff1ff234ffffff",
;!             "0xef231ffffffffff4f12fff34ffffffff2fffffbbfffafffdffff22f538ffffff",
;!             "6734895437463543785934736452323748923482347623542634728"
;!           ],
;!           "caller": "0xaA5360796742f5b8235B4fF1fAc5843E658fec75"
;!         }
;!       ],
;!       "expected": [
;!         "143268280533798984280626563216701884452898533151473998"
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
;!           "caller": "0xCF3479829cCd78218a05B16cc8a0b2b952B208aa"
;!         }
;!       ],
;!       "expected": [
;!         "5205817307728658054337357463547686623259643155181961175"
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
;!           "caller": "0x809e46accF1b51C58f997B0388bDa0BFd13501b9"
;!         }
;!       ],
;!       "expected": [
;!         "5205817307728658054337357463547686623259643155181961175"
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
;!           "caller": "0x6CDbE7A467B19d0dba09D5eEdA205e787c9867a0"
;!         }
;!       ],
;!       "expected": [
;!         "5205817307728658054337357463547686623259643155181961176"
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
;!           "caller": "0x70e1B88c51D267653A0B687940837dB5e02f9671"
;!         }
;!       ],
;!       "expected": [
;!         "5205817307728658054337357463547686623259643155181961176"
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
;!           "caller": "0x322347158B984936BdeBe575927f09772a97128B"
;!         }
;!       ],
;!       "expected": [
;!         "4785420515141501473933080503501442490599789180695732857"
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
;!           "caller": "0x77a32065E298DF33E0B3cC7147b913Ef2e7b7Bbd"
;!         }
;!       ],
;!       "expected": [
;!         "5205817307728658078121630935932410471473464497505194398"
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
;!           "caller": "0xDdE2DFc6E56739D2be26870D3155Ee1B7AFC5183"
;!         }
;!       ],
;!       "expected": [
;!         "3676739177993772322739978474771624323036938686821287622"
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
;!           "caller": "0x734EDea836Aa46FC2c45567CF29B747664dc5566"
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
;!           "caller": "0x77691C340b0FF39f1bA80Df4C21af2b2E49Be5A3"
;!         }
;!       ],
;!       "expected": [
;!         "1"
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
;!           "caller": "0x9914FAb5A0585781E15801a5dF612164CCe65C22"
;!         }
;!       ],
;!       "expected": [
;!         "1"
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
;!           "caller": "0x6EF075603a2920f8A286A6C88B0113221E93a56b"
;!         }
;!       ],
;!       "expected": [
;!         "2"
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
;!           "caller": "0x04bCc275cE1E725379447B11762513042e8215F7"
;!         }
;!       ],
;!       "expected": [
;!         "385347583459430234923842734623542325264782394023482374625423"
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
;!           "caller": "0x4DBD109f0601D8455329617b25Ce033803181354"
;!         }
;!       ],
;!       "expected": [
;!         "43873543534623235553423423423949234923947324723387478233"
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
;!           "caller": "0xe354A0CE2Ec18AB911b95e2dbEe4E4A52f4bad82"
;!         }
;!       ],
;!       "expected": [
;!         "8939384548956875984554349903434903490994494993020960"
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
;!           "caller": "0x860812b6CD72D2edEEa2D9CA43CbD85d54b408C9"
;!         }
;!       ],
;!       "expected": [
;!         "54367829174652819374654281934765281937468197465281947562815652820"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_ordinar_max",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "8934583485834958423984923948923489238948923232849429834",
;!             "5743892143323342342342342342343234234234234233423432423",
;!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
;!           ],
;!           "caller": "0xD46aEDdE5a8043AE5b783Ab0217944558EE58cAa"
;!         }
;!       ],
;!       "expected": [
;!         "14678475629158300766327266291266723473183157466272862257"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_ordinar_to_max_minus_one_max",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "67345763475737323342423423423423432232333434485834858348958348582848238423848",
;!             "48446325761578872081147561585264475620936550179805705690499235425064891216086",
;!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
;!           ],
;!           "caller": "0xea7C59B6216D63F0f1e0393356996fB4A99d34c3"
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
;!             "2627823478238423324723748234889489238948234823848237723",
;!             "115792089237316195423568357185209669429945260917405674550218635773089281402212",
;!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
;!           ],
;!           "caller": "0x42C8363707564B7754E73009B889D9b5b9e35151"
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
;!             "0xab000000000000000000000000000000000000000000000000000000000000a1",
;!             "0x54ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff5f",
;!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
;!           ],
;!           "caller": "0x585B30c29e863bf1893520282B025D29b85bDB12"
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
;!             "0x2fff1ffffffffff5ffffff0fffffffff2ffffffafffafffcffff1ff234ffffff",
;!             "0xef231ffffffffff4f12fff34ffffffff2fffffbbfffafffdffff22f538ffffff",
;!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
;!           ],
;!           "caller": "0xcBF2E17AB9C72455993557f6540655843AD31b70"
;!         }
;!       ],
;!       "expected": [
;!         "14082212818049917570678938371545509262648545780014710136968537875118318157823"
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
;!           "caller": "0xD2563C3636175b62288E05C29BDAfF2df9f72450"
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
;!           "caller": "0x44484b4b04Eb0711194CB4A22Cb8bc8de09E8361"
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
;!           "caller": "0x5f187D89a68AC1fB08b4E29Ecc69844EEEEEB992"
;!         }
;!       ],
;!       "expected": [
;!         "1"
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
;!           "caller": "0x91Ee96EFd918Bc7c9Ce8df32fbeA4b8cD155A557"
;!         }
;!       ],
;!       "expected": [
;!         "1"
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
;!           "caller": "0xCB1679c1a27b02D887adF03A0e56ED2C9c40310e"
;!         }
;!       ],
;!       "expected": [
;!         "7437834752357434334343423342323233245234534443443375834785783474"
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
;!           "caller": "0xA2d6c30ceA5f375401B9c8506bbb21656bfc2BBC"
;!         }
;!       ],
;!       "expected": [
;!         "23784273472384723848213821342323233223"
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
;!           "caller": "0xaE7cd62ef2F9cf0490b29A456709A2c73472C7D6"
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
  %res = call i256 @addmod(i256 noundef %arg1, i256 noundef %arg2, i256 noundef %arg3)
  store i256 %res, ptr addrspace(1) null, align 4
  call void @llvm.evm.return(ptr addrspace(1) null, i256 32)
  unreachable
}

define i256 @addmod(i256 %arg1, i256 %arg2, i256 %modulo) #0 {
entry:
  %is_zero = icmp eq i256 %modulo, 0
  br i1 %is_zero, label %return, label %addmod

addmod:
  %arg1m = urem i256 %arg1, %modulo
  %arg2m = urem i256 %arg2, %modulo
  %res = call {i256, i1} @llvm.uadd.with.overflow.i256(i256 %arg1m, i256 %arg2m)
  %sum = extractvalue {i256, i1} %res, 0
  %obit = extractvalue {i256, i1} %res, 1
  %sum.mod = urem i256 %sum, %modulo
  br i1 %obit, label %overflow, label %return

overflow:
  %mod.inv = xor i256 %modulo, -1
  %sum1 = add i256 %sum, %mod.inv
  %sum.ovf = add i256 %sum1, 1
  br label %return

return:
  %value = phi i256 [0, %entry], [%sum.mod, %addmod], [%sum.ovf, %overflow]
  ret i256 %value
}

declare {i256, i1} @llvm.uadd.with.overflow.i256(i256, i256)
declare void @llvm.evm.return(ptr addrspace(1), i256)
declare i256 @llvm.evm.calldataload(ptr addrspace(2))

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone willreturn }
