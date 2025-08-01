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
//!           "caller": "0xF237d0f4ADe2291DB00818E3AA816760Ea85f10E"
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
//!           "caller": "0xdffb1aFEbB5b04A369606C530dfE198d24134eee"
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
//!           "caller": "0x16f63CEc05419c3c721D9B79b832f496808be371"
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
//!           "caller": "0x3849E61516e84Ea6916eeA43a68BE5C6574c35a7"
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
//!           "caller": "0x1A723c4081AD169168aDb7A0741FFbE01EcfA0aD"
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
//!           "caller": "0x1C9c0714d73D765D007CC242cA5F08Ea5EA4493C"
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
//!           "caller": "0x1A1ee061abafd27176f4300F41A1C1d60379e9bA"
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
//!           "caller": "0xAa605633A500C55f697feDABb6437aa851190518"
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
//!           "caller": "0x5208008930b5fCa1A1b01a437B8634b88d2b6E25"
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
//!           "caller": "0xAC67F82015363d1C0C5865Ee1b779c2C41a0aA64"
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
//!           "caller": "0x6b2162841aF6142f142Ed053Bdf2bca1851B76a3"
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
//!           "caller": "0x2f49D86EA1DD61C3E3DcbC4C7eb24D9f92Ba102e"
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
//!           "caller": "0xD0bd0Ab511E8982978742f51b9aBbbEAa0a43800"
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
//!           "caller": "0x52187f8Fa3400408e0B55860034B14d897AAbDAD"
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
//!           "caller": "0xaaEfD3212F175FE6cA85d1f534ce20322E11E148"
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
//!           "caller": "0x99c06E4fada4B7138c9C274B3c7AF5bAEcD4BbE0"
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
//!           "caller": "0xc390D992897a91727A4e7580Ab42063A4d1c9181"
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
//!           "caller": "0xA4598Be6eCE1fC3A142540287B984477dA89544b"
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
//!           "caller": "0xcc2e9816fd6C82479393699282E8c4292D16DBA1"
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
//!           "caller": "0x1C4777d721Fdb0c6Aa85e0d44C49AC46CE4c1731"
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
//!           "caller": "0x74Fe4cB3eA4Cc0E55Ad2826574c9e486E19a5fBA"
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
//!           "caller": "0x1993f1046368717265cDf0Ab7568f7635c39c7Dd"
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
//!           "caller": "0xD0771BA08F8462E6Bb6F5d30FDc2a74EE7d21BEB"
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
//!           "caller": "0xb23AE95495Ff68773D9c585027Abf8dB7f9eB6F3"
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
//!           "caller": "0xF97976b87f7DC892512cB30B84f9Dce2aFA45F59"
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
//!           "caller": "0x4D104Bd9A1c0C8B42Be4db62e3b3a1d6Aee2c63E"
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
//!           "caller": "0xa7dF941928219C8C84960f64bA135B2C1B655bE2"
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
//!           "caller": "0x78d1ebDd938d820AddaF0422Bf4Da7d33D7310f5"
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
//!           "caller": "0x3a58EDa1460b952AdE03d61f0c63f81ce8163104"
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
//!           "caller": "0xDD371bc3594e563fE520F6Ff3A7F88cbbCdbec84"
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
//!           "caller": "0x536862C8657e313244c18b814229ca8aba7f201C"
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
//!           "caller": "0x1E8cd2A8a7Bc36eB660dDF18d333D103d9D8f306"
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
//!           "caller": "0xB0B3a06d7E8396318956dFf3250f0AAA971841BC"
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
//!           "caller": "0xCFdC1D19Cc9Dd64E349c8C80b4f98243c1E3561B"
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
//!           "caller": "0x9c7248767b2E5211483Ec585d4bd751a0eA55d87"
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
//!           "caller": "0x8032f42390131985925283a6bbf5746105b3F807"
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
//!           "caller": "0xB371cc464cc56247a578A66B98c1c9e830dcB2e7"
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
//!           "caller": "0xF06E34C2aCe86565C2187B7FA3E4CCB89Ef7f6DC"
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
//!           "caller": "0xC432ef23EdAb44ff60D8c057567aC8a168CB0075"
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
//!           "caller": "0xF708aeEE036fCa502cc070Bd6B844e0A082ce16f"
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
//!           "caller": "0x1f1a5D27163b8f8d7190f87bf3aB40463cf65B5B"
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
//!           "caller": "0x5c83d914D02Bdc67B2Bd040D6cDC162825f74D17"
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
//!           "caller": "0x726df7552Ba6eDc38c1Ef7c07cE63Fb0836DA010"
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
//!           "caller": "0x9d632Cd3a04380cd37e1fd3b526FFE948010BC4e"
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
//!           "caller": "0x864F253950d41E9212d657903E940B048cC887d8"
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
//!           "caller": "0xcfE115e8a3C5A7a71FB7E4c8B7152cc63aaA9861"
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
//!           "caller": "0xd36Aab638feE459dD7ADbaC4e16Eab7aF0532C5C"
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
//!           "caller": "0xAacA948f8A839F80A107Ad69430cbd9d3d78F7f2"
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
//!           "caller": "0x7138aFBF552D17B39D49A9551B2DA0e0ff28A9f3"
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
//!           "caller": "0x6F4Db722F1a981D5bEC3BaBCD1b74d5c69090877"
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
//!           "caller": "0xE05FBA8F479ce55e574c4C51091f8073c8c51Dac"
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
//!           "caller": "0x0Cf22CF314F3d08B7E6c6b6c0B683B522bb5e0d2"
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
//!           "caller": "0xE9183F0751Baf90b2D23EC9eE619653b65Af8b8A"
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
//!           "caller": "0x35F66004BCd07F84C8347c8be34fd0D5335ECdbF"
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
//!           "caller": "0xC925B50b7eeDe609f0Bc1f0860BECBF18b762ff6"
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
//!           "caller": "0x6597C277344B92CE7c7a00306697DC295FE913b9"
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
//!           "caller": "0x5554B6EBD706594707328Bca978aA664fB894A0a"
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
//!           "caller": "0x9600CF662F629Bf226de471b94705d53E4E9fEED"
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
//!           "caller": "0x49c91775CeCD340cF80af12D0502595dD500b14d"
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
//!           "caller": "0x46d688e540fA076DB5f2D45b407730315961707A"
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
//!           "caller": "0x36D77243793225bDc83C7408754a64bC062F3faB"
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
//!           "caller": "0xCB8CE729e946565622c067592aEd59B7b3c1f9dF"
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
//!           "caller": "0x09c7aD26C6981675c5A746bE19d9a0122dD24734"
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
//!           "caller": "0x4Ec613897473D46080feF28d317b244717BfF577"
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
//!           "caller": "0x0B8c7dC947b4433bae5bF04E3550659894E6e3c3"
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
//!           "caller": "0x4f13490Dc3D12AE0C6E326Fb9A42B9bAbA39Ae72"
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
//!           "caller": "0x701e200c1Eb19442BcE4caE6A6258CDc2ABC558c"
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
//!           "caller": "0x85A241bC9E68B27f172Da76C7dcAC8144b1108a3"
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
//!           "caller": "0x472D92De17557363f938D5BA522d15D65Db2309D"
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
//!           "caller": "0x4A4547136A017C665FcEdCDddCa9dfD6d7dBc77f"
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
//!           "caller": "0x16068726298f9111BB04E2A9dDB12102A194dDc2"
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
//!           "caller": "0xaAd786334e07BabA9bc378cEc91C5c87791E8472"
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
//!           "caller": "0xAf6ebf973f4758468a7570073b3D7D76957D4760"
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
//!           "caller": "0xF58ba6cA7E48842bCb2784193BE0262aF687dD81"
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
//!           "caller": "0xcbe5a09C092Ec9d0a87073280528F493A5240Ef9"
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
//!           "caller": "0x3A019D82F6c9b775Aaa30b2AE0a962cEf3E0a33d"
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
//!           "caller": "0x255e49759aC1675dd616403219336A2C4047dba2"
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
//!           "caller": "0xCDe01FfD309CB033e764a983e3DD680988781816"
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
//!           "caller": "0x53ea689B93dBdd1218DBf8Dfee522Ef45D39337c"
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
//!           "caller": "0x6Eee2ffa5ba6CDDF3926c07aFaa023457Ab4f5e0"
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
//!           "caller": "0xc194b393ab5EC485756De3AFF929078D39Ac4aD9"
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
//!           "caller": "0xcD8E684D2508398e7E8822CD6C39eDaA89032695"
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
//!           "caller": "0x809365a1CD0155F3d8c936B85b706D39734642dE"
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
