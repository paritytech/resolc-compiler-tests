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
;!           "caller": "0xC4B33bE86CB8b1073a669BAf020537eB073490b7"
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
;!           "caller": "0xb88e43a8D0F506baE38dEb673B0D0fC23c45e4B2"
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
;!           "caller": "0xfa39bcD4fcF463a519BD15C985706f9f6D4938f4"
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
;!           "caller": "0x66621459aDfFD41f800D2048F94e05d7A9EAB759"
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
;!           "caller": "0x378404C9e375B0624f7D0fb8df49aF23467534c2"
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
;!           "caller": "0xb19A88d9DC4FD036D591E3b25EaEe5B76923c3cb"
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
;!           "caller": "0x51Ae749D9B690De9DfCda638402A3F5cDAc5D96d"
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
;!           "caller": "0x303ab9afD59f083aE252e8E5d3B5F2b009A53Bb2"
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
;!           "caller": "0x3d2e33A53B9eef3AB05A8b4392220132fF9e6e4F"
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
;!           "caller": "0x9bD85140ab1A38c8061f9b9901141Dfc411E0d56"
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
;!           "caller": "0x98c89D16c82F29FA50e1f0E92797162f4BC4da97"
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
;!           "caller": "0x085377fb70428c98B823eA1A40377d80B4adEc29"
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
;!           "caller": "0x3DA14B4Ed85Db48503045F293a575261CFFd09D5"
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
;!           "caller": "0x58e328b97B89c260E3e02d6C8e441E1523E37EFB"
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
;!           "caller": "0xa06A3E61798f63619e8fEAf04268Db2Ef83b00d9"
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
;!           "caller": "0x8cE410D4e6894329d6dfAabB79608BD1Eefa31fe"
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
;!           "caller": "0xcB8B8753522f5D620AC62773F9d285203295ab54"
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
;!           "caller": "0x87f7FC6184B26B0b56aD754271468B87c80234AB"
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
;!           "caller": "0x3118481d4241eC9D0C08a986683738418105c262"
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
;!           "caller": "0x099E70493abE25794aacD282BC66065ade874B7D"
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
;!           "caller": "0xaE5803BD94cb7Fb0118C536f1c6c873692dEd7fC"
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
;!           "caller": "0x093B39862D224a1476f175697264b7DD30d529c2"
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
;!           "caller": "0xd34fa82509519EB1192185AFf3Aa00603E28629D"
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
;!           "caller": "0x4577e27736626bC62c99BB79af25cEBf18442217"
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
;!           "caller": "0x5880274dE8226a890d3C7Ee3aBA193B7deC6f9f0"
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
;!           "caller": "0x942Fc1876751Dd948A1819686d8668F1E8457256"
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
;!           "caller": "0x45f13364CdB2E5085F6d14D11AdDd1c0d3c6CddE"
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
;!           "caller": "0xE8A4029c7ECA04166a3ddA5f7c906B541F161621"
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
;!           "caller": "0x7C9eb0901b747b27ab51E12899d1Bfc83620F137"
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
;!           "caller": "0x18da64292177249414CD99ca70f6763993748eAE"
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
;!           "caller": "0xC8E37445AAB845a8f0896Ed06E69b43960eeC139"
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
;!           "caller": "0x166A209bdeD2060e96880a099B0635E017c8D50F"
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
;!           "caller": "0xEb6AD36f75621CF7B1DfBD46118e4b7778ce0E50"
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
;!           "caller": "0x2664ac32F4169db16B4b0abcbd1B2EFB17219F67"
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
;!           "caller": "0x1cedf494677BD80F7F5a9F5710b4372f7069D511"
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
;!           "caller": "0x8B7362904d626097D66cdCC58976bAA12272d711"
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
;!           "caller": "0xA93AC0E41552cA8AE208f01A8e4762b091597A45"
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
;!           "caller": "0x8dDaa7dAdB8F032B4D080F2ab84FEA5004C2EA6A"
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
;!           "caller": "0xb488719F487B067Ef6dBd2ee59706a3dC9CCE03b"
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
;!           "caller": "0xd57ACE2F50b83DcB93D6E45ffa400343BD078008"
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
;!           "caller": "0x14f0D57B74be13BE8cF3D593473cc75C33f38557"
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
;!           "caller": "0xF25c87802B46818652FC1073ab949f415E1f649e"
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
;!           "caller": "0xd2c6448E5F68496f0d4BCe2376eB57B0D4934e61"
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
;!           "caller": "0x3EE16af92EBF440349Bc0e204C41375F3D67F6f1"
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
;!           "caller": "0xb5910f319d710416Dd5C13573DeEae0156337e11"
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
;!           "caller": "0x3cb83Dd794101B8742b5B2A1E051162d57240FaE"
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
;!           "caller": "0x233E6c308b92ED5186223BB53b5Caf85B579f276"
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
;!           "caller": "0x5209e942500f9768F578e54892c3D3BECd979dc5"
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
;!           "caller": "0x29e177515d2420D718D0B16282C5Bcbb0416560a"
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
;!           "caller": "0x1A0CE3Ff3a5077786cE78a555305c4033bd00891"
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
;!           "caller": "0x456D57B1b7B08e9C9925319786c4875D59b74bb0"
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
;!           "caller": "0xFfaF64f671c6eB78660088CFf5F9e190Afc88b94"
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
;!           "caller": "0x8A1f1290642f8A58C050445E612D6a6c9C82A1E6"
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
;!           "caller": "0x30562FfAB9e65790d631530bBeD9AC89aB43D93f"
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
;!           "caller": "0xc6146C845F8fd5038F197ddeEdC0dc85032A9945"
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
;!           "caller": "0x32263C4E0A1EE174761b9a9e21D2238cEDaABe8C"
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
;!           "caller": "0xA60dEf66F93b8A011b71BE33A62e11253ad31c78"
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
;!           "caller": "0x90b9313D4C404a0995b0061d1a19D26f842ac895"
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
;!           "caller": "0x41E1f1f1C018f8239b0D9cd654044d84b425c66d"
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
;!           "caller": "0x537417A2e47D61dFd86F4F9B97dF9471974eCE34"
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
;!           "caller": "0x55620c632Ff293283eeD2d1767c6732a81990195"
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
;!           "caller": "0x2cE6A62bd1E71F228B292958b2E8Dfa69281dc0a"
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
;!           "caller": "0x3EBAc79cA1af31512D6990Bf855803b7211fBf6A"
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
;!           "caller": "0x406F9bC1F2E6A5Ef9C5632182DB83348B19f50D9"
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
;!           "caller": "0xF58334F0F2Eb0D21f8d237f7e0a6355543ba5F74"
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
;!           "caller": "0xd4a32db47eBC857808CD3D4b4B3300Cbe646a051"
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
;!           "caller": "0x18C1B0a151EB5C73623075464090DB82F68E6f53"
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
;!           "caller": "0xb6575e5e2aebDca67D344818E85836b998dbfd71"
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
;!           "caller": "0xF1B430EfE21f98FaD2322c80876f100931493a9d"
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
;!           "caller": "0xdeFf079f14fA0A1d5A41D85389f0F3C7Fb10Df3e"
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
;!           "caller": "0xA80AAb3621DA694c1E010697307914d5C2109dC9"
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
;!           "caller": "0xB39720338aa7c2E1Ef77A86af27D72f25C18b44E"
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
;!           "caller": "0x4322973837dFde4fFEdDecD412F0E1C4ED22149b"
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
;!           "caller": "0x4Fa11AF74bE7B0364B4CD21cCE7C0dD3a18b53D4"
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
;!           "caller": "0x6a8Efc58Fb40f77CD471F3778b8c66d1665E603E"
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
;!           "caller": "0x575DA9c4Ead5B3848d78bB014E4c6F3cFa30Acd5"
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
;!           "caller": "0x8D4CBadf0B3d598d1A9A1aC2b330A0e915CF9649"
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
;!           "caller": "0x9533668bBEf9d961873935Ca9F000Df194559f43"
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
;!           "caller": "0x40F60dCB74225a37d3FAa3c97D82dEc7847dE121"
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
;!           "caller": "0xd401e23e11F7B85B1C008e1495C8E8A29c49058f"
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
;!           "caller": "0xb1d5B1bEcF92Dc6501D8EFEC56fB16B9659e7Ce0"
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
;!           "caller": "0x1a7C6E6e6101d799f24d94Db49ba82Eb38776801"
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
;!           "caller": "0xc4AD6cf26d70b5A405a2e1E77FEaE55A5940Cb40"
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
  %res = call i256 @__addmod(i256 noundef %arg1, i256 noundef %arg2, i256 noundef %arg3)
  store i256 %res, ptr addrspace(1) null, align 4
  call void @llvm.evm.return(ptr addrspace(1) null, i256 32)
  unreachable
}

declare i256 @__addmod(i256 %arg1, i256 %arg2, i256 %modulo) #0
declare void @llvm.evm.return(ptr addrspace(1), i256)
declare i256 @llvm.evm.calldataload(ptr addrspace(2))

attributes #0 = { alwaysinline mustprogress nofree norecurse nosync nounwind readnone willreturn }
