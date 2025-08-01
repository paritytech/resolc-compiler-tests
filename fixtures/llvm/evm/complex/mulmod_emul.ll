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
;!           "caller": "0x9dBaFb9a651E26424a21a3e057E6384e09D26646"
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
;!           "caller": "0x2f8DbeeEAE18E561B056D894bEC76edEB46c06D7"
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
;!           "caller": "0xf9AA106EF4E8ddFF90dbB015D3ADf86Cd1F7007F"
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
;!           "caller": "0xE52E25cc6e0DC4ac9EB763f30f70dd3Ef3cfA97a"
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
;!           "caller": "0x6D31Af2a149a14719764108a8b2975094Db67DC5"
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
;!           "caller": "0xece78307469c7eF8Edd9a3441B34ab101C18083D"
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
;!           "caller": "0x9Dc5569658b7BCEB5fd88fA508B3391a81317D8b"
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
;!           "caller": "0x4DE53d17A8fCfa528A18d72A6683F740f68828bF"
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
;!           "caller": "0x379973379b3920B5E2C67c72e0e3AF3E75B60bAD"
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
;!           "caller": "0x2E09dE6C6747a7B0c578773A32F5FC3C38376a6e"
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
;!           "caller": "0xDEfAC20dcF27733A166e85075A64D673B3147B9d"
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
;!           "caller": "0x7d84925b842d8e9Eb9EDac5aD9941F18E5A57ad7"
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
;!           "caller": "0x2B39D861A92c97E4110AE0B29bAFC46451bA98fa"
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
;!           "caller": "0x4cD511F404677244E0AB5D1B3389f4e17D290DA2"
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
;!           "caller": "0xb2A6C7bd2D5fCf2ADdE47D98fc5040426687fF28"
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
;!           "caller": "0xc7Fd68cF13d23EBE585b00Ada3369FdF1Ce0510C"
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
;!           "caller": "0xFb51f52F8aD0A324bE7524313Dd551d47F969c7a"
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
;!           "caller": "0x4e244C20fDea02Ae056a53678e1Edb69FA52c91F"
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
;!           "caller": "0xBf7708326038825450412B2f641f3D7faf1ADEd0"
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
;!           "caller": "0x52246774B1014B3789b9E932e0E30aEB611A5352"
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
;!           "caller": "0x495C1Af4714932159225B1f053525ebcDCba6055"
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
;!           "caller": "0xEe8076d275fb12407CA35fb2E37d4D6F0fc44962"
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
;!           "caller": "0xbf2C78ef65505523BE7715997954733d02a518C7"
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
;!           "caller": "0x4437ac5118161f5Fb5dF10dc8045B09e0cF3d127"
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
;!           "caller": "0x19cc0be12924D927d0574724A2061FcDe6841d42"
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
;!           "caller": "0x27e5806c7d2368A5F62FF08e97FDaBF9DA410cda"
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
;!           "caller": "0x717cEbb6F83F1828C29cEFA8B55E651745E7E71F"
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
;!           "caller": "0x1Bb375e00CF453EFc23af83dD457ACCeCa4e9DC1"
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
;!           "caller": "0xEd0541Ba260e76c8b023e871A8F168319d1281A7"
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
;!           "caller": "0x3Bf0fcc64f4Fd61e14011d7a379D6f4b7DD70c3a"
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
;!           "caller": "0x0aD60a0232810E7E88904CE27782d9E5bffb8041"
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
;!           "caller": "0x78EA06b8Ef12359653dA04232050a6C720324E8e"
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
;!           "caller": "0x764eDdCfd7b8f671D4e32839E5692ac1d84F065B"
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
;!           "caller": "0xAD6974502c18a6571fE211C3bBC6D1745c7da763"
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
;!           "caller": "0xa5569da88e9D9c29516c83156a467AB04F633Bb4"
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
;!           "caller": "0xB72a880283c91CB93aAc50A95e26cBFA15D20F90"
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
;!           "caller": "0x94c13556AEddb8b16c363843d859ba18c119835E"
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
;!           "caller": "0xbAaa8c917993F2eC657A67771556C288b4f431F2"
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
;!           "caller": "0x2437856359273fBF5895Eac584A423cC5c297d2f"
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
;!           "caller": "0x4Fb7bED39cF6Cc98aDa4c10e6a19CC71E1669B96"
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
;!           "caller": "0x3339A00711a07E93bF09449850D024E48ba48B1a"
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
;!           "caller": "0x9d1a9c9bBcA0dc7b9B46Ea80761e005376dd4012"
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
;!           "caller": "0x78AC9a8d632c7Fa4616Daa8D3360f58Aedf56F7D"
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
;!           "caller": "0x7ECd137a0f42D278edbb649f8A0A57B31d16d6C2"
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
;!           "caller": "0xdcAa7d768b574fc5eE6a954a82E8560125C9cc8D"
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
;!           "caller": "0xd0adb599d30f151110C866db24f4eA18ef82509b"
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
;!           "caller": "0x38512b5a47A092354818DC031532c9D0261695e0"
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
;!           "caller": "0xB05Da3f2e145C6b156D97872386Bc8645B34b668"
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
;!           "caller": "0x2c86e4D0f989cfd34287f404636B8B90D449664a"
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
;!           "caller": "0x12C51594795E6213e88Cf69795791717C2Bc0195"
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
;!           "caller": "0x6D06Ac6cdF34e64B07B386CFc650D0Da6371537e"
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
;!           "caller": "0xA71b91F99193534f400a539673732cB04C1Beee8"
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
;!           "caller": "0xc89940BAf07b70Fa40b4027b9d59Ae5fBC9D7DB1"
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
;!           "caller": "0x1a3C311f718C604611A305470E3b8239c9aE9c5D"
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
;!           "caller": "0x9A1597A1052bA073132eE5BA5A76d4Bfc11215Ba"
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
;!           "caller": "0x35d75DAC2A26C4024e226149abDBeE4Bc31013a5"
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
;!           "caller": "0xFe1d9DDb9e09d0863b5C87707EBb16D6233791A8"
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
;!           "caller": "0x57C537E0816a2007EfFAb1987b12fbc7610Ea2B0"
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
;!           "caller": "0x0A79c130059F129c85Dd4E12fc512dC35E415B9f"
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
;!           "caller": "0xEb35846A785807DD7b27Be3035f129D019ba3962"
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
;!           "caller": "0x69bDaB0CC679E7C30900cC678BeCBbC4a88d6458"
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
;!           "caller": "0x4B12Ff5c20Ea16b5969765B02Eb6ED1A0576a22E"
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
;!           "caller": "0x4A9EFcAa4e67A466b11dA8C4B8f0C42aDc78a512"
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
;!           "caller": "0x4528BE9a1eE6e0bde498074B87451812162B43Fb"
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
;!           "caller": "0xd2b09DbF1424D8a867cb4937e5C21cD49249d55f"
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
;!           "caller": "0x3aA5089e8517E53F5d1481163a90cBE61435C2d0"
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
;!           "caller": "0x812f0E0A7b98815EA9a8d5778891f242b3038273"
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
;!           "caller": "0x6D44dfe434590d58c82a0b01F60df8283904f3cc"
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
;!           "caller": "0x967ae9c6B2171d7793Fea203c05CeaE5c27b00f5"
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
;!           "caller": "0x36f0600624e8Fe5707969175D5b4B9EA4356f25f"
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
;!           "caller": "0x64bf57f7b882e2dC1F5a89662559120e1fE417Cf"
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
;!           "caller": "0x0c2CAd8728eded8Df1B3E6204445c3F8b1498531"
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
;!           "caller": "0x3EA2cEEfAb36d9d8e195a8E74f38E4adc44D58dE"
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
;!           "caller": "0x9aEf162387bCbe93bbA0fE447A1159f6b5d1077D"
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
;!           "caller": "0x94600dF6310470Ca878e1966933F7B835E0D015a"
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
;!           "caller": "0x259d9bc2711A81c78dC9df7dDed8853E84Aa7af2"
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
;!           "caller": "0xc4D9F1418c146f24B185b4CfD7a4d598cD52C8FD"
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
;!           "caller": "0xB34C00B627A26a22E26c7F93848895500F54a736"
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
;!           "caller": "0x692048d3b89e92e294C1C3be801B02f20E396041"
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
;!           "caller": "0x6B16705aFE30D953EDd6EDb4c5aC4C353e16B35a"
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
;!           "caller": "0x47B6ECbE246D70b5CD76CE4BB121AfFAfb989C0a"
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
;!           "caller": "0xDe244edA0817f09368f8ad7875A9c0E8a709EA68"
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
;!           "caller": "0x7209a9513d35Fe0EfCc78d46CD7552E78C17C9E7"
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
