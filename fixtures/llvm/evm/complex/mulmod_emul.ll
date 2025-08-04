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
;!           "caller": "0xe85763513ee093bC60e5bf1075A7888503f82170"
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
;!           "caller": "0x5dDFEd605b6f2a9CEEEcD76Bb9791C4CF7d7680e"
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
;!           "caller": "0x12e931B8A5116529Bc6555bDF7BbE6d4A9e976b8"
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
;!           "caller": "0x3f295de73D357493B274E9956b7c8d32FEaEab9f"
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
;!           "caller": "0x0A2152b933aB1aaD9010CdD568abE3dDAC67f9FF"
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
;!           "caller": "0xbce608aD58cC3AEBCc188b5754727db803dD7914"
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
;!           "caller": "0x164335Ca293515F740fa2Ace86552db9aF2d0be7"
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
;!           "caller": "0x3660e6420EF511d4145262483aa3295b19B917E1"
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
;!           "caller": "0xA30A7cD9F40B1f76d65275d0fd0CBf8dB66767C6"
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
;!           "caller": "0xE959674807099583a211Ea342dEDFCee15F4f39B"
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
;!           "caller": "0xfD914612b31edEd945c5318cD25598f4f77414A0"
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
;!           "caller": "0x7A4b9c2F9F3203d99eE2017C8BEbDBc9f9BFbB9F"
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
;!           "caller": "0x17097065Be1af5714BAA2Dc00384943Ef18393D0"
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
;!           "caller": "0x65803c07ee6D5F092Aba42cAdfb1768a5E92c4a6"
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
;!           "caller": "0x6e1199048329aFf6DEf16a3FB92124b465CEfd18"
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
;!           "caller": "0x4a9EEA3AAa548c3218eC9648458c563A063BEAFA"
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
;!           "caller": "0xF883350f4b68017035030F19120769F197b57e6a"
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
;!           "caller": "0xa759e07B9C6cB5cfc9D8E19d5ADC5c79103a3Ada"
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
;!           "caller": "0x2Ee50DBcA4aC4544B311f452cc1d8D729AC56c7A"
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
;!           "caller": "0x04d664Fb5B28f3b873a46F961d3eF84f37e1eE39"
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
;!           "caller": "0xd73764acCE7E1813C35c3B347201d6407DcAdA32"
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
;!           "caller": "0xC9B09579370F0E74EaE25531E6999632b9fd193f"
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
;!           "caller": "0xec996b3Ca909BA5122E1DDcD646C0B9E929dd9E9"
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
;!           "caller": "0xad39Dc37E593B2f9f16a2b83316d5e1f42c54e4D"
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
;!           "caller": "0x82061A20351Ec3502492877eEe50F5e73704bc5E"
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
;!           "caller": "0x26910960370A7c5Dfbf098BdD2DDd2d52Dbe4D2A"
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
;!           "caller": "0x94d0A3a8A1493ede0a1Dd54A6A84aFA366cBebf5"
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
;!           "caller": "0xfe77C7347c03513F50258c8bEa7E2007e019a92d"
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
;!           "caller": "0x39265c24aB8a886c036656778CFE1594C16A83c9"
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
;!           "caller": "0xBbb0DeAb4CBDd88f6BbDDCeA1c2186697D71E684"
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
;!           "caller": "0xB6C9C6D4F5FC5b487Fc6bB0bc2c3cc862ff721df"
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
;!           "caller": "0x0bb49e8ECe599F60aF20a4f5BE0057e7a022f546"
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
;!           "caller": "0x17C67f57f16AfD4D639767b2BDD3c4d871f670A5"
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
;!           "caller": "0xb923DAD02381B46F0fbfC5a9a97DA16A94BE7aa4"
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
;!           "caller": "0x084a994ee884D758b268763878C1fC61FbeaF9e2"
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
;!           "caller": "0xAebf441C6c4C8571c43A1cf963522551bd441af2"
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
;!           "caller": "0xEE8331d9B5F35f48Ca1E8D3b25CF2651edcc65b4"
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
;!           "caller": "0x0c1C644d3C5270B23D66a8cA12f1A0fAE85242Fc"
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
;!           "caller": "0x6c03a55213C135C4245D15D6c5256515B8E05b7A"
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
;!           "caller": "0x9C2F8A469eb801f0611Ac3E1964817B82b8f9E9b"
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
;!           "caller": "0x65B8a21aA9697F7cE389eed642BBD5F1dc1Bb8B8"
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
;!           "caller": "0xA07292D801A8da5f9755a2A66644FE501A1ee48F"
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
;!           "caller": "0xdd1916acA9a1A0D364e8b9055c94367a391881D3"
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
;!           "caller": "0x3d28Ce31AEC78236F5f035cdC354f78f5366b6Fd"
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
;!           "caller": "0x23CcF74a64cFAD84d2186B4C2b7C913C7B1eaa18"
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
;!           "caller": "0x8e6f3e259B5107368Be2a8836DF77Ff1d958F55B"
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
;!           "caller": "0x0b7874329aA9434C52fB9611F4bA040C137c3E1b"
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
;!           "caller": "0x3C8088e4b07f636DAFF4f1dF21A0db65C84db7A6"
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
;!           "caller": "0xc6c77E7640203ff22248e1a24Aa7154D12e08aFc"
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
;!           "caller": "0x28783965Ad710FEd04fB4744e27B227957accFef"
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
;!           "caller": "0xcC336F665909cF0151775C888a64F0493A91Bc68"
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
;!           "caller": "0x31d1BAAc7dd8eF53b5EC9D9021F400f812696d2A"
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
;!           "caller": "0x80a1Eb7035ea15f8eC889FdCbe284af50CEaab2E"
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
;!           "caller": "0xd40f614d19392a8F2282Da5183b4e012D22F119b"
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
;!           "caller": "0xC3F5aE916538c905980E94fF1033Eed1aAf867ff"
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
;!           "caller": "0x987Bf8adF4ff60b1F624DB6B991306BDe7452719"
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
;!           "caller": "0xE80c107B818354F774079940E64cFE7f5b96c02F"
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
;!           "caller": "0x96B730cE5026DEBf6A0116592176aA94DEcf795F"
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
;!           "caller": "0x68Ae9848e921EffbDBA9074257a16195332D8112"
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
;!           "caller": "0xFA260B8c21c34382a4a0c0e11506A023aE03D672"
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
;!           "caller": "0x34c76a423315a527f1838A2C636f118Bb12a1935"
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
;!           "caller": "0x9C74d599398F861eaCA6C3C83CA528a94D71317f"
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
;!           "caller": "0x898b787d6704a5ef0fac4012F62896da533A9554"
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
;!           "caller": "0x529aB47b53489690bEF53870fdbE10f4943Ac2b2"
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
;!           "caller": "0xb31a0d21De8cbA696276d93640d1B6B1e459a867"
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
;!           "caller": "0xae6034eD9E99a81b5ca02e9776C17F334aB2B404"
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
;!           "caller": "0xBE466D13C5599e4AC8c7BdDe2c3EE4174f3F83E4"
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
;!           "caller": "0x8F4dFC7785E1689F8297246b76b5AB067C5D20b2"
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
;!           "caller": "0xf161a5C5985e6f0bFa9df761432F09F72CbcE091"
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
;!           "caller": "0xfCb7f686114bA15E6791f2C5b5B7cE48439c084F"
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
;!           "caller": "0x7e82884095DB54c03336d9816b6f73a59fB1aF19"
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
;!           "caller": "0xEEd624B80Ea557f64F4532E55a82784E816BBb50"
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
;!           "caller": "0xA233bF74d411CD5203013ABF0C21617b62151ae8"
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
;!           "caller": "0x417939116e7A5bd0dCBe1209e6F704DababB19c0"
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
;!           "caller": "0xa123dD35D499330bC2d1b5E50c430F1D48208E7e"
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
;!           "caller": "0xfF116CA8d16270B77B0409cf5D86849f2B08e807"
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
;!           "caller": "0x8c92638530ac64f5fc27Fc9A000a98A0f1068C56"
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
;!           "caller": "0x2FDBf452a1163F3874998100ca949ae21bc51e56"
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
;!           "caller": "0xB912df84822C99323242CB1a2A21B39BF00D3234"
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
;!           "caller": "0x69b8CF71276c70bF306d64B07C73bF2272Eb52F7"
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
;!           "caller": "0xAAB766BBBEE3C7eBF24795847669d065a898Ba21"
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
;!           "caller": "0xFb7c03EacB0F2fCc2904E88138E49Bc5c5bb993D"
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
;!           "caller": "0x55a0E9E3aDDb782C20320862554F285Dc251809a"
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
  %res = call i256 @mulmod(i256 noundef %arg1, i256 noundef %arg2, i256 noundef %arg3)
  store i256 %res, ptr addrspace(1) null, align 4
  call void @llvm.evm.return(ptr addrspace(1) null, i256 32)
  unreachable
}

define private i256 @clz(i256 %v) noinline {
entry:
  %vs128 = lshr i256 %v, 128
  %vs128nz = icmp ne i256 %vs128, 0
  %n128 = select i1 %vs128nz, i256 128, i256 256
  %va128 = select i1 %vs128nz, i256 %vs128, i256 %v
  %vs64 = lshr i256 %va128, 64
  %vs64nz = icmp ne i256 %vs64, 0
  %clza64 = sub i256 %n128, 64
  %n64 = select i1 %vs64nz, i256 %clza64, i256 %n128
  %va64 = select i1 %vs64nz, i256 %vs64, i256 %va128
  %vs32 = lshr i256 %va64, 32
  %vs32nz = icmp ne i256 %vs32, 0
  %clza32 = sub i256 %n64, 32
  %n32 = select i1 %vs32nz, i256 %clza32, i256 %n64
  %va32 = select i1 %vs32nz, i256 %vs32, i256 %va64
  %vs16 = lshr i256 %va32, 16
  %vs16nz = icmp ne i256 %vs16, 0
  %clza16 = sub i256 %n32, 16
  %n16 = select i1 %vs16nz, i256 %clza16, i256 %n32
  %va16 = select i1 %vs16nz, i256 %vs16, i256 %va32
  %vs8 = lshr i256 %va16, 8
  %vs8nz = icmp ne i256 %vs8, 0
  %clza8 = sub i256 %n16, 8
  %n8 = select i1 %vs8nz, i256 %clza8, i256 %n16
  %va8 = select i1 %vs8nz, i256 %vs8, i256 %va16
  %vs4 = lshr i256 %va8, 4
  %vs4nz = icmp ne i256 %vs4, 0
  %clza4 = sub i256 %n8, 4
  %n4 = select i1 %vs4nz, i256 %clza4, i256 %n8
  %va4 = select i1 %vs4nz, i256 %vs4, i256 %va8
  %vs2 = lshr i256 %va4, 2
  %vs2nz = icmp ne i256 %vs2, 0
  %clza2 = sub i256 %n4, 2
  %n2 = select i1 %vs2nz, i256 %clza2, i256 %n4
  %va2 = select i1 %vs2nz, i256 %vs2, i256 %va4
  %vs1 = lshr i256 %va2, 1
  %vs1nz = icmp ne i256 %vs1, 0
  %clza1 = sub i256 %n2, 2
  %clzax = sub i256 %n2, %va2
  %result = select i1 %vs1nz, i256 %clza1, i256 %clzax
  ret i256 %result
}

define private i256 @ulongrem(i256 %0, i256 %1, i256 %2) noinline {
  %.not = icmp ult i256 %1, %2
  br i1 %.not, label %4, label %51

4:
  %5 = tail call i256 @clz(i256 %2)
  %.not61 = icmp eq i256 %5, 0
  br i1 %.not61, label %13, label %6

6:
  %7 = shl i256 %2, %5
  %8 = shl i256 %1, %5
  %9 = sub nuw nsw i256 256, %5
  %10 = lshr i256 %0, %9
  %11 = or i256 %10, %8
  %12 = shl i256 %0, %5
  br label %13

13:
  %.054 = phi i256 [ %7, %6 ], [ %2, %4 ]
  %.053 = phi i256 [ %11, %6 ], [ %1, %4 ]
  %.052 = phi i256 [ %12, %6 ], [ %0, %4 ]
  %14 = lshr i256 %.054, 128
  %15 = udiv i256 %.053, %14
  %16 = urem i256 %.053, %14
  %17 = and i256 %.054, 340282366920938463463374607431768211455
  %18 = lshr i256 %.052, 128
  br label %19

19:
  %.056 = phi i256 [ %15, %13 ], [ %25, %.critedge ]
  %.055 = phi i256 [ %16, %13 ], [ %26, %.critedge ]
  %.not62 = icmp ult i256 %.056, 340282366920938463463374607431768211455
  br i1 %.not62, label %20, label %.critedge

20:
  %21 = mul nuw i256 %.056, %17
  %22 = shl nuw i256 %.055, 128
  %23 = or i256 %22, %18
  %24 = icmp ugt i256 %21, %23
  br i1 %24, label %.critedge, label %27

.critedge:
  %25 = add i256 %.056, -1
  %26 = add i256 %.055, %14
  %.not65 = icmp ult i256 %26, 340282366920938463463374607431768211455
  br i1 %.not65, label %19, label %27

27:
  %.157 = phi i256 [ %25, %.critedge ], [ %.056, %20 ]
  %28 = shl i256 %.053, 128
  %29 = or i256 %18, %28
  %30 = and i256 %.157, 340282366920938463463374607431768211455
  %31 = mul i256 %30, %.054
  %32 = sub i256 %29, %31
  %33 = udiv i256 %32, %14
  %34 = urem i256 %32, %14
  %35 = and i256 %.052, 340282366920938463463374607431768211455
  br label %36

36:
  %.2 = phi i256 [ %33, %27 ], [ %42, %.critedge1 ]
  %.1 = phi i256 [ %34, %27 ], [ %43, %.critedge1 ]
  %.not63 = icmp ult i256 %.2, 340282366920938463463374607431768211455
  br i1 %.not63, label %37, label %.critedge1

37:
  %38 = mul nuw i256 %.2, %17
  %39 = shl i256 %.1, 128
  %40 = or i256 %39, %35
  %41 = icmp ugt i256 %38, %40
  br i1 %41, label %.critedge1, label %44

.critedge1:
  %42 = add i256 %.2, -1
  %43 = add i256 %.1, %14
  %.not64 = icmp ult i256 %43, 340282366920938463463374607431768211455
  br i1 %.not64, label %36, label %44

44:
  %.3 = phi i256 [ %42, %.critedge1 ], [ %.2, %37 ]
  %45 = shl i256 %32, 128
  %46 = or i256 %45, %35
  %47 = and i256 %.3, 340282366920938463463374607431768211455
  %48 = mul i256 %47, %.054
  %49 = sub i256 %46, %48
  %50 = lshr i256 %49, %5
  br label %51

51:
  %.0 = phi i256 [ %50, %44 ], [ -1, %3 ]
  ret i256 %.0
}

define private i256 @mulmod(i256 %arg1, i256 %arg2, i256 %modulo) noinline {
entry:
  %cccond = icmp eq i256 %modulo, 0
  br i1 %cccond, label %ccret, label %entrycont
ccret:
  ret i256 0
entrycont:
  %arg1m = urem i256 %arg1, %modulo
  %arg2m = urem i256 %arg2, %modulo
  %less_then_2_128 = icmp ult i256 %modulo, 340282366920938463463374607431768211456
  br i1 %less_then_2_128, label %fast, label %slow
fast:
  %prod = mul i256 %arg1m, %arg2m
  %prodm = urem i256 %prod, %modulo
  ret i256 %prodm
slow:
  %arg1e = zext i256 %arg1m to i512
  %arg2e = zext i256 %arg2m to i512
  %prode = mul i512 %arg1e, %arg2e
  %prodl = trunc i512 %prode to i256
  %prodeh = lshr i512 %prode, 256
  %prodh = trunc i512 %prodeh to i256
  %res = call i256 @ulongrem(i256 %prodl, i256 %prodh, i256 %modulo)
  ret i256 %res
}

declare {i256, i1} @llvm.uadd.with.overflow.i256(i256, i256)
declare void @llvm.evm.return(ptr addrspace(1), i256)
declare i256 @llvm.evm.calldataload(ptr addrspace(2))
