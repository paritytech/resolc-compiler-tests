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
//!           "caller": "0x2468e57803a5df9efeeba6732038049b10183d77"
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
//!           "caller": "0xa78f18733abda8a10f7bbbbcbabb543a84c5328a"
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
//!           "caller": "0x4cfe814be2dca0b2b6db5260cde16c72a2fed909"
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
//!           "caller": "0x6f4f9df6b6a05cfed41b6239c21917b7e72cbdd2"
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
//!           "caller": "0x03884a2a83efcbeb7099daebd8e0bd674838b9ba"
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
//!           "caller": "0x8a61303fb56d5a834eaa175ec2f6b8a4ecad137e"
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
//!           "caller": "0x502355d09e4ff53001989000d23295e247fc6ed0"
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
//!           "caller": "0x4ac1cadf34c555158f2958ddc88c7655311cf50f"
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
//!           "caller": "0x52e835aca273ba190e6210e3a38b42255cd848a2"
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
//!             "0xfafffffffffffffffffffffffffffffffffffffffffffffffffffffff4ffffff",
//!             "0x050000000000000000000000000000000000000000000000000000000b000000",
//!             "0"
//!           ],
//!           "caller": "0x1d09e4ee2ee2a73735c66bd00d3ee5fbdd366ea8"
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
//!             "0xab000000000000000000000000000000000000000000000000000000000000a1",
//!             "0x54ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff5f",
//!             "0"
//!           ],
//!           "caller": "0x32878562ebeb012c1cf2129cd460398d28127072"
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
//!             "0x2fff1ffffffffff5ffffff0fffffffff2ffffffafffafffcffff1ff234ffffff",
//!             "0xef231ffffffffff4f12fff34ffffffff2fffffbbfffafffdffff22f538ffffff",
//!             "0"
//!           ],
//!           "caller": "0x71556c38f44e17ec21f355bd18416155000bf5a6"
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
//!           "caller": "0x8f8aecf18e3336e7de89ffb66168bdedde6f2a19"
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
//!           "caller": "0x99029516b89277cdb6b844319b09814403e8d550"
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
//!           "caller": "0x5e2f2d9ba42764e994f2272c1d91dddde6c548d3"
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
//!           "caller": "0x30933ab66117fd19a1fe23db0ab233edbd915689"
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
//!           "caller": "0x888070bcc41491ad63394f768097c6fdf238dc97"
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
//!           "caller": "0xce416b5f6599fa6bde1b20a7fb3600755a0b533b"
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
//!           "caller": "0xcc09a541d520a48b35e646b0d9a3d2e4aa9089a6"
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
//!           "caller": "0x0a68984d901937f3ee2a8d6f895ee0a0d673aa79"
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
//!           "caller": "0x0f78f9d04285629daa772573d057e1a91fbca0b2"
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
//!           "caller": "0xfc911d92c6fb5265398074016d9b60d5cd90af92"
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
//!           "caller": "0x0c320a199c05610ac76f3343c4a0c4033f79cdfd"
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
//!           "caller": "0x4756b834604bb9462e739fe74c96f705de52a96c"
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
//!           "caller": "0x842789a128e6c9e58e09e65820c4cfa8b432ec3a"
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
//!           "caller": "0x664e1a20fc507516c433b2f0e9ac80a788c7efff"
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
//!           "caller": "0x1bc74ba4140ce0940a88bdd1391c3cc4433841dd"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "two_zero_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "2",
//!             "0",
//!             "1"
//!           ],
//!           "caller": "0xd456c9e850de321cf1ec68bcb2f666638dcbc9ab"
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
//!           "caller": "0x4f70b413c0c5b810552a825039a73dd8f4be7e4a"
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
//!             "0xfafffffffffffffffffffffffffffffffffffffffffffffffffffffff4ffffff",
//!             "0x050000000000000000000000000000000000000000000000000000000b000000",
//!             "1"
//!           ],
//!           "caller": "0x7c3753cdb43b6bcc490550b914fc488e07e28bf3"
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
//!             "0xab000000000000000000000000000000000000000000000000000000000000a1",
//!             "0x54ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff5f",
//!             "1"
//!           ],
//!           "caller": "0x8b35469263442f7b5e6ae25b7d48fd035597506e"
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
//!             "0x2fff1ffffffffff5ffffff0fffffffff2ffffffafffafffcffff1ff234ffffff",
//!             "0xef231ffffffffff4f12fff34ffffffff2fffffbbfffafffdffff22f538ffffff",
//!             "1"
//!           ],
//!           "caller": "0xe2e8cfd60281ef90fecef2eaae3dedfdd151fcc3"
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
//!           "caller": "0x0e7fb0de5c47a26aefe7d6ff7d3afeed253d9a65"
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
//!           "caller": "0x8a7af5fb3b2f22aefc3208df3508ac73baab098e"
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
//!           "caller": "0x95d3f1426e21d68a5c41cdac8d46d209c95f27f3"
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
//!           "caller": "0x5ebe575916be217ee519f4ba2a1df51c2c52fd17"
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
//!           "caller": "0x5340b93c661fc061f88e6079c3395251cf86a19c"
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
//!           "caller": "0x3019f38bddba2bcfffd3a56a232acede60d01566"
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
//!           "caller": "0xd34d1cda00b72515f58240ee8d1eee7fb06605d6"
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
//!           "caller": "0xabe5cdffe91f0f6b49cae126f369ea5ae51b8757"
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
//!           "caller": "0x0c97b4d4f0803a95d7dcb175a3d417131a75bd25"
//!         }
//!       ],
//!       "expected": [
//!         "1"
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
//!           "caller": "0xba7536f3a1d83c05ca72206d0f409edbdaa96fe9"
//!         }
//!       ],
//!       "expected": [
//!         "1"
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
//!           "caller": "0x60e8da62e72bbda9e3c5730402b1df5b8112358b"
//!         }
//!       ],
//!       "expected": [
//!         "2"
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
//!           "caller": "0x7ce17c715baa13f5e70ed4f6b5ebb7d04ff8e2a1"
//!         }
//!       ],
//!       "expected": [
//!         "3806109516113667800853767386706858816392394866986028175"
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
//!           "caller": "0xfc44100f8f3c061198bb1308a8803356773458fb"
//!         }
//!       ],
//!       "expected": [
//!         "3464170909841972837815004710006741383053238982131669865"
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
//!           "caller": "0xe0a2b8d6129a555b064d3be434c3c5a9e467fdb9"
//!         }
//!       ],
//!       "expected": [
//!         "8939384548956875984554349903434903490994494993020960"
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
//!           "caller": "0xaec315033cb08a5891b9aae71d16697c7ef2978b"
//!         }
//!       ],
//!       "expected": [
//!         "1122390563298694939482039005289855975809195069546337164"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "8934583485834958423984923948923489238948923232849429834",
//!             "5743892143323342342342342342343234234234234233423432423",
//!             "6734895437463543785934736452323748923482347623542634728"
//!           ],
//!           "caller": "0x0cd1423d308d2fab040448a5024c9662328e7609"
//!         }
//!       ],
//!       "expected": [
//!         "1208684754231213194457793386619225626218462219187592801"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_ordinar_to_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "67345763475734785873485834858348958348582848238423848",
//!             "47076922298769071715669669331407893506027850516560019248",
//!             "6734895437463543785934736452323748923482347623542634728"
//!           ],
//!           "caller": "0xd719f1da83ce19f54abaa4b8f5206bccef8afefa"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_sum_minus_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "2627823478238423324723748234889489238948234823848237723",
//!             "4107071959225120461210988217434259684534112799694397006",
//!             "6734895437463543785934736452323748923482347623542634728"
//!           ],
//!           "caller": "0x033587b82b73e5ef3a9955bc83e744f4bf051bc5"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_sum",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "78534387453485348583489583489583495834858934985982398",
//!             "6656361050010058437351246868834165427647488688556652330",
//!             "6734895437463543785934736452323748923482347623542634728"
//!           ],
//!           "caller": "0x454e6b5e7b5113c636b092b0d4857f6ad1ddc650"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_sum_plus_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "2745764578678457867485678478567845576875845678454554545",
//!             "3989130858785085918449057973755903346606501945088080182",
//!             "6734895437463543785934736452323748923482347623542634728"
//!           ],
//!           "caller": "0x6eef47d866e801492d2478ff4d8f3e75577fd9a9"
//!         }
//!       ],
//!       "expected": [
//!         "6734895437463543785934736452323748923482347623542634727"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_ordinar_bigger_sum",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "4567890987654678923042342342342342234534234",
//!             "34234234322332342356457567897665235",
//!             "6734895437463543785934736452323748923482347623542634728"
//!           ],
//!           "caller": "0x89b00956d0fdb62138c349716e66999daea88731"
//!         }
//!       ],
//!       "expected": [
//!         "4567891021888913245374684698799910132199469"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_to_max_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xfafffffffffffffffffffffffffffffffffffffffffffffffffffffff4ffffff",
//!             "0x050000000000000000000000000000000000000000000000000000000b000000",
//!             "6734895437463543785934736452323748923482347623542634728"
//!           ],
//!           "caller": "0x21c0e8ec9092683a81687c1efb84d6f718b3f82b"
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
//!             "0xab000000000000000000000000000000000000000000000000000000000000a1",
//!             "0x54ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff5f",
//!             "6734895437463543785934736452323748923482347623542634728"
//!           ],
//!           "caller": "0xad44a88f0e522604b1be3936d253f19afe0eac48"
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
//!             "0x2fff1ffffffffff5ffffff0fffffffff2ffffffafffafffcffff1ff234ffffff",
//!             "0xef231ffffffffff4f12fff34ffffffff2fffffbbfffafffdffff22f538ffffff",
//!             "6734895437463543785934736452323748923482347623542634728"
//!           ],
//!           "caller": "0x620a86b71cbd013da2de46766a2936424382cd2a"
//!         }
//!       ],
//!       "expected": [
//!         "143268280533798984280626563216701884452898533151473998"
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
//!           "caller": "0x787425711065b98fbc6367f3377d0fb841dd3d3b"
//!         }
//!       ],
//!       "expected": [
//!         "5205817307728658054337357463547686623259643155181961175"
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
//!           "caller": "0x31f4f0e8001a46f638f45197b46a69ad8131af30"
//!         }
//!       ],
//!       "expected": [
//!         "5205817307728658054337357463547686623259643155181961175"
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
//!           "caller": "0x2b7e932bc84becb15294748908d9cc535b2041c0"
//!         }
//!       ],
//!       "expected": [
//!         "5205817307728658054337357463547686623259643155181961176"
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
//!           "caller": "0x7dd2b168a7b007a4635e72cb121a71a39d663a71"
//!         }
//!       ],
//!       "expected": [
//!         "5205817307728658054337357463547686623259643155181961176"
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
//!           "caller": "0xeb3f4fcf527da6b3ae792ee85e99316e19366d7b"
//!         }
//!       ],
//!       "expected": [
//!         "4785420515141501473933080503501442490599789180695732857"
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
//!           "caller": "0x8a79e9d44f06c4aed742c14066056f3e60399684"
//!         }
//!       ],
//!       "expected": [
//!         "5205817307728658078121630935932410471473464497505194398"
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
//!           "caller": "0x75c1f8b70a6f3476ef8f93090bcff6e84ef3925e"
//!         }
//!       ],
//!       "expected": [
//!         "3676739177993772322739978474771624323036938686821287622"
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
//!           "caller": "0x8698795fb2040962a93a75aa4119ae5c716b82c0"
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
//!           "caller": "0xb35d53519b6a3add7e30bed03a2043d1aaf01a8d"
//!         }
//!       ],
//!       "expected": [
//!         "1"
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
//!           "caller": "0xc24b40ab6ba88d209316296efef25c1d0077756a"
//!         }
//!       ],
//!       "expected": [
//!         "1"
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
//!           "caller": "0xad2814a4c019e442fc0fe21f6b8134987c4df862"
//!         }
//!       ],
//!       "expected": [
//!         "2"
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
//!           "caller": "0x40658e398f8494b1b09e3da4355e473adbb48eca"
//!         }
//!       ],
//!       "expected": [
//!         "385347583459430234923842734623542325264782394023482374625423"
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
//!           "caller": "0xf2fe3494058d1c0d19d5ec86d9be56786a44b456"
//!         }
//!       ],
//!       "expected": [
//!         "43873543534623235553423423423949234923947324723387478233"
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
//!           "caller": "0xd477e33a5ef099cf48bfb1c23531a66d365956a9"
//!         }
//!       ],
//!       "expected": [
//!         "8939384548956875984554349903434903490994494993020960"
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
//!           "caller": "0xed3a103e9f72ad3b4212bc5687e61809b2ddb6d0"
//!         }
//!       ],
//!       "expected": [
//!         "54367829174652819374654281934765281937468197465281947562815652820"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "8934583485834958423984923948923489238948923232849429834",
//!             "5743892143323342342342342342343234234234234233423432423",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0xc65003b120cacf55ca1f76203702e9e99405d544"
//!         }
//!       ],
//!       "expected": [
//!         "14678475629158300766327266291266723473183157466272862257"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_to_max_minus_one_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "67345763475737323342423423423423432232333434485834858348958348582848238423848",
//!             "48446325761578872081147561585264475620936550179805705690499235425064891216086",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0x41e05e7ff60c02ee67e54d184a7b81e783137c43"
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
//!             "2627823478238423324723748234889489238948234823848237723",
//!             "115792089237316195423568357185209669429945260917405674550218635773089281402212",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0xb3b7aaa5ac2ddff8b22ad0bd8a80e95dc6fd10b9"
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
//!             "0xab000000000000000000000000000000000000000000000000000000000000a1",
//!             "0x54ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff5f",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0x8fa3416516ffb652c8ce2848736165e15d87f9dd"
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
//!             "0x2fff1ffffffffff5ffffff0fffffffff2ffffffafffafffcffff1ff234ffffff",
//!             "0xef231ffffffffff4f12fff34ffffffff2fffffbbfffafffdffff22f538ffffff",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0xde704795609ba3bdc18a107e0054cc563c92e36d"
//!         }
//!       ],
//!       "expected": [
//!         "14082212818049917570678938371545509262648545780014710136968537875118318157823"
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
//!           "caller": "0x53388a22236a2613049d7be97fb7244a49e17bc5"
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
//!           "caller": "0x727091601a678069968538f8fcc17f2dcfbd4181"
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
//!           "caller": "0x3bcafee6bfd0a80ff5c1ddff4cc25c7bd0adc658"
//!         }
//!       ],
//!       "expected": [
//!         "1"
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
//!           "caller": "0xdeecf41daaee47029c49eeef4cc6859190f1c622"
//!         }
//!       ],
//!       "expected": [
//!         "1"
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
//!           "caller": "0x9e498d818e881077c070f1da7b425500e4e4dcdc"
//!         }
//!       ],
//!       "expected": [
//!         "7437834752357434334343423342323233245234534443443375834785783474"
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
//!           "caller": "0xd8b9177c498d84cdc05179eca0dcbede7eb23ac5"
//!         }
//!       ],
//!       "expected": [
//!         "23784273472384723848213821342323233223"
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
//!           "caller": "0x500352ef08e364f8629e990afb2e15036a7f9e20"
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
            result := addmod(a, b, c)
        }
    }
}
