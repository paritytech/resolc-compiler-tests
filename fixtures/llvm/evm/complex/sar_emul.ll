;! {
;!   "cases": [
;!     {
;!       "name": "zero_zero",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0",
;!             "0"
;!           ],
;!           "caller": "0x5684fBcA29075D48C70d1e48EEa3b60511e55D12"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "zero_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0",
;!             "1"
;!           ],
;!           "caller": "0xa95A457D68515A2EB9C5E89eF96E8fa60d4Ab61d"
;!         }
;!       ],
;!       "expected": [
;!         "1"
;!       ]
;!     },
;!     {
;!       "name": "zero_minus_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0",
;!             "-1"
;!           ],
;!           "caller": "0x0656a4814B3e9a0757bCDA72C45236dD42DC4B07"
;!         }
;!       ],
;!       "expected": [
;!         "-1"
;!       ]
;!     },
;!     {
;!       "name": "zero_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0",
;!             "0x5348958934589349590349059034905903CDF343443AB34344343CCC34343443"
;!           ],
;!           "caller": "0xc6115e1eec3bdE7970542F120cc7417095AaC89E"
;!         }
;!       ],
;!       "expected": [
;!         "0x5348958934589349590349059034905903CDF343443AB34344343CCC34343443"
;!       ]
;!     },
;!     {
;!       "name": "zero_minus_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0",
;!             "-632574534856236475345634624374238423192181237123712631236123123"
;!           ],
;!           "caller": "0x051B278D990197a96318E8e63b7EF257954c31bB"
;!         }
;!       ],
;!       "expected": [
;!         "-632574534856236475345634624374238423192181237123712631236123123"
;!       ]
;!     },
;!     {
;!       "name": "zero_max",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0",
;!             "0x7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!           ],
;!           "caller": "0xfE3064b2FBBE81d0a8B9fEB8763cCc2950e91936"
;!         }
;!       ],
;!       "expected": [
;!         "0x7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!       ]
;!     },
;!     {
;!       "name": "zero_min",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0",
;!             "0x8000000000000000000000000000000000000000000000000000000000000000"
;!           ],
;!           "caller": "0x9A10D29ee92CaA51Ba509F5a232672E5122947F3"
;!         }
;!       ],
;!       "expected": [
;!         "0x8000000000000000000000000000000000000000000000000000000000000000"
;!       ]
;!     },
;!     {
;!       "name": "one_zero",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "1",
;!             "0"
;!           ],
;!           "caller": "0x471a16a58651BCb927c45a4B47d3C6034929c0Bb"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "one_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "1",
;!             "1"
;!           ],
;!           "caller": "0x3E8E3E0a8c147a12804552DEe0aC1AEdd0334d6a"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "one_minus_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "1",
;!             "-1"
;!           ],
;!           "caller": "0xfd54eA15EeEb9CB617D339fEA4077eB130755FDe"
;!         }
;!       ],
;!       "expected": [
;!         "-1"
;!       ]
;!     },
;!     {
;!       "name": "one_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "1",
;!             "0x5348958934589349590349059034905903CDF343443AB34344343CCC34343443"
;!           ],
;!           "caller": "0xe708D6dF6ec1D0d7f8ab8832a62c8Fbb91a0aE68"
;!         }
;!       ],
;!       "expected": [
;!         "0x29A44AC49A2C49A4AC81A482C81A482C81E6F9A1A21D59A1A21A1E661A1A1A21"
;!       ]
;!     },
;!     {
;!       "name": "one_minus_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "1",
;!             "-632574534856236475345634624374238423192181237123712631236123123"
;!           ],
;!           "caller": "0xaD4840aD66292d36Ab36095267b4eE652b06F02F"
;!         }
;!       ],
;!       "expected": [
;!         "-316287267428118237672817312187119211596090618561856315618061562"
;!       ]
;!     },
;!     {
;!       "name": "one_max",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "1",
;!             "0x7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!           ],
;!           "caller": "0x174E2AE93e8f6494f2c5ed644c2784d33865b29C"
;!         }
;!       ],
;!       "expected": [
;!         "0x3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!       ]
;!     },
;!     {
;!       "name": "one_min",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "1",
;!             "0x8000000000000000000000000000000000000000000000000000000000000000"
;!           ],
;!           "caller": "0xDE80D2DBd274f52Eeb3d66681C39B621f99c75a6"
;!         }
;!       ],
;!       "expected": [
;!         "0xC000000000000000000000000000000000000000000000000000000000000000"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_bytes_zero",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "40",
;!             "0"
;!           ],
;!           "caller": "0xD6969a8552A66aCeE2A9146F99BD58A096402a37"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_bytes_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "40",
;!             "1"
;!           ],
;!           "caller": "0x9a104C46D997099BC0D8a096180Db951f9854Fd6"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_bytes_minus_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "40",
;!             "-1"
;!           ],
;!           "caller": "0x71B41e3EC85C7d68251B568915f050c63f82a7CC"
;!         }
;!       ],
;!       "expected": [
;!         "-1"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_bytes_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "40",
;!             "0x5348958934589349590349059034905903CDF343443AB34344343CCC34343443"
;!           ],
;!           "caller": "0x4151Fc0e1466FFD3B385a8a70bf1AC5F24EEA630"
;!         }
;!       ],
;!       "expected": [
;!         "0x00000000005348958934589349590349059034905903CDF343443AB34344343C"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_bytes_minus_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "40",
;!             "-632574534856236475345634624374238423192181237123712631236123123"
;!           ],
;!           "caller": "0x611C96bdCC3532667DBA36E2b1b7f1F02D885E94"
;!         }
;!       ],
;!       "expected": [
;!         "-575323187928221591706128151030714819346195542606177"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_bytes_max",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "40",
;!             "0x7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!           ],
;!           "caller": "0xe704CCFd4c460f085D4f55990A27d29145Df1C18"
;!         }
;!       ],
;!       "expected": [
;!         "0x00000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_bytes_min",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "40",
;!             "0x8000000000000000000000000000000000000000000000000000000000000000"
;!           ],
;!           "caller": "0x128815F27059758Da293FC69f7deDCF6085CfFAD"
;!         }
;!       ],
;!       "expected": [
;!         "0xFFFFFFFFFF800000000000000000000000000000000000000000000000000000"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_zero",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "171",
;!             "0"
;!           ],
;!           "caller": "0xCff3419dBa69E94FA0FccC17D7242b3b15FBC4a3"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "171",
;!             "1"
;!           ],
;!           "caller": "0xe088D3261d50B7FFEa05EA47e92FC4150Cf293F4"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_minus_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "171",
;!             "-1"
;!           ],
;!           "caller": "0xAe10A4143243c39382A82Dc5a1EBf6dC2079Dfa4"
;!         }
;!       ],
;!       "expected": [
;!         "-1"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "171",
;!             "0x5348958934589349590349059034905903CDF343443AB34344343CCC34343443"
;!           ],
;!           "caller": "0x6515259B5fA4452600d011E8D874Ae30dc1ECeF3"
;!         }
;!       ],
;!       "expected": [
;!         "0xA6912B1268B12692B2069"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_minus_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "171",
;!             "-632574534856236475345634624374238423192181237123712631236123123"
;!           ],
;!           "caller": "0x42A6F1d2d02B2979D504cbf4254ebaE3c7d93dD5"
;!         }
;!       ],
;!       "expected": [
;!         "-211340361659"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_max",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "171",
;!             "0x7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!           ],
;!           "caller": "0xcEBA90A3FB8A2638Ae672d6F9FD571BCC39D75F3"
;!         }
;!       ],
;!       "expected": [
;!         "0x0000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFF"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_min",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "171",
;!             "0x8000000000000000000000000000000000000000000000000000000000000000"
;!           ],
;!           "caller": "0xd03C53F9D9C4497e59FF4887c34eE2DA263A2f45"
;!         }
;!       ],
;!       "expected": [
;!         "-19342813113834066795298816"
;!       ]
;!     },
;!     {
;!       "name": "254_zero",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "254",
;!             "0"
;!           ],
;!           "caller": "0x5Ed11dD493571517A5aFD3F9B431EE6e41953CA1"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "254_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "254",
;!             "1"
;!           ],
;!           "caller": "0x79dD94725482Fdc98067b8Ec46f0B98A83819E78"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "254_minus_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "254",
;!             "-1"
;!           ],
;!           "caller": "0x63ae9d5584e09b256b26fe8C5348ed05A7A73576"
;!         }
;!       ],
;!       "expected": [
;!         "-1"
;!       ]
;!     },
;!     {
;!       "name": "254_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "254",
;!             "0x5348958934589349590349059034905903CDF343443AB34344343CCC34343443"
;!           ],
;!           "caller": "0x16A24d0277248382456444e3d0677D29A19EF49f"
;!         }
;!       ],
;!       "expected": [
;!         "1"
;!       ]
;!     },
;!     {
;!       "name": "254_minus_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "254",
;!             "-632574534856236475345634624374238423192181237123712631236123123"
;!           ],
;!           "caller": "0x02CdFF7A11dCD830F90D6b1771Eb4846DB60a91B"
;!         }
;!       ],
;!       "expected": [
;!         "-1"
;!       ]
;!     },
;!     {
;!       "name": "254_max",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "254",
;!             "0x7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!           ],
;!           "caller": "0xC9756805B83Aad1182862aCC8c6b899FB14a5e2C"
;!         }
;!       ],
;!       "expected": [
;!         "1"
;!       ]
;!     },
;!     {
;!       "name": "254_min",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "254",
;!             "0x8000000000000000000000000000000000000000000000000000000000000000"
;!           ],
;!           "caller": "0xcCD818b030645D7ac8EDf5F35F3D6f7f1478Cc22"
;!         }
;!       ],
;!       "expected": [
;!         "-2"
;!       ]
;!     },
;!     {
;!       "name": "255_zero",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "255",
;!             "0"
;!           ],
;!           "caller": "0xE144a761a0b90741a8180f532121A7D03870bbdE"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "255_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "255",
;!             "1"
;!           ],
;!           "caller": "0x2d938b44386cE42c6C2B4800eDc0B192495de5d0"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "255_minus_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "255",
;!             "-1"
;!           ],
;!           "caller": "0xE26d0B6Ac6522C0674aE285707Fb867E99Af21ee"
;!         }
;!       ],
;!       "expected": [
;!         "-1"
;!       ]
;!     },
;!     {
;!       "name": "255_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "255",
;!             "0x5348958934589349590349059034905903CDF343443AB34344343CCC34343443"
;!           ],
;!           "caller": "0xC301d00D8560215fdE74D75c12E56933FffA7C52"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "255_minus_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "255",
;!             "-632574534856236475345634624374238423192181237123712631236123123"
;!           ],
;!           "caller": "0xFD8D86340D3Be4337B6566F38d75946dD65b2661"
;!         }
;!       ],
;!       "expected": [
;!         "-1"
;!       ]
;!     },
;!     {
;!       "name": "255_max",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "255",
;!             "0x7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!           ],
;!           "caller": "0x726DDFbc7F5629702eBD7724C5F68EFd8855Ff1d"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "255_min",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "255",
;!             "0x8000000000000000000000000000000000000000000000000000000000000000"
;!           ],
;!           "caller": "0xD961C2A97655bB0ad4ee86CB6502fF425515b231"
;!         }
;!       ],
;!       "expected": [
;!         "-1"
;!       ]
;!     },
;!     {
;!       "name": "256_zero",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "256",
;!             "0"
;!           ],
;!           "caller": "0x93Ad547c7C1b8F30b0F21c24fdD7Af91b9377Ce3"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "256_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "256",
;!             "1"
;!           ],
;!           "caller": "0x41aC185B695c30910527AC7178E668376E8cB4cC"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "256_minus_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "256",
;!             "-1"
;!           ],
;!           "caller": "0x3A4CF6f3bC56F901D1EECed7D10b8eB38B4A0379"
;!         }
;!       ],
;!       "expected": [
;!         "-1"
;!       ]
;!     },
;!     {
;!       "name": "256_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "256",
;!             "0x5348958934589349590349059034905903CDF343443AB34344343CCC34343443"
;!           ],
;!           "caller": "0xaeD72B083DbF2c4317E36d49780010f7575Af311"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "256_minus_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "256",
;!             "-632574534856236475345634624374238423192181237123712631236123123"
;!           ],
;!           "caller": "0xA48c16B27B75E2BF290c7aB63b94c69356955a35"
;!         }
;!       ],
;!       "expected": [
;!         "-1"
;!       ]
;!     },
;!     {
;!       "name": "256_max",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "256",
;!             "0x7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!           ],
;!           "caller": "0x3B23Ae1cA102B82b9a41E53360D6425874234F20"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "256_min",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "256",
;!             "0x8000000000000000000000000000000000000000000000000000000000000000"
;!           ],
;!           "caller": "0x7aee56FD937d01DBaC0cFDf0AFbF42f21a6a9F91"
;!         }
;!       ],
;!       "expected": [
;!         "-1"
;!       ]
;!     },
;!     {
;!       "name": "big_ordinar_zero",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "35242523534534534233424343343443",
;!             "0"
;!           ],
;!           "caller": "0x8Abd03975bCD1A337482670D4894803CeA6c0d5C"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "big_ordinar_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "35242523534534534233424343343443",
;!             "1"
;!           ],
;!           "caller": "0xf0de8eeE346D60cec555D19190B60c6a80C35d05"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "big_ordinar_minus_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "35242523534534534233424343343443",
;!             "-1"
;!           ],
;!           "caller": "0xb6Bb1b7FbFcDA9CdDAB6E9CFcAa0Efe75dF02B01"
;!         }
;!       ],
;!       "expected": [
;!         "-1"
;!       ]
;!     },
;!     {
;!       "name": "big_ordinar_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "35242523534534534233424343343443",
;!             "0x5348958934589349590349059034905903CDF343443AB34344343CCC34343443"
;!           ],
;!           "caller": "0xA34EA44CB1D0119B694C3B4c3B0B5828d215694e"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "big_ordinar_minus_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "35242523534534534233424343343443",
;!             "-632574534856236475345634624374238423192181237123712631236123123"
;!           ],
;!           "caller": "0xb0700B458Ec4C6b9b5720cd3094e74CD50943098"
;!         }
;!       ],
;!       "expected": [
;!         "-1"
;!       ]
;!     },
;!     {
;!       "name": "big_ordinar_max",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "35242523534534534233424343343443",
;!             "0x7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!           ],
;!           "caller": "0x3EA2033840BD10462Eb864D3535D9f17c4D49001"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "big_ordinar_min",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "35242523534534534233424343343443",
;!             "0x8000000000000000000000000000000000000000000000000000000000000000"
;!           ],
;!           "caller": "0x511DED1dFd91b3053b685c9889A540558C9AD9c9"
;!         }
;!       ],
;!       "expected": [
;!         "-1"
;!       ]
;!     },
;!     {
;!       "name": "max_zero",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "0"
;!           ],
;!           "caller": "0x0e5161BAcC2E7d2A8062E752fAf86bd5647bB5e2"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "max_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "1"
;!           ],
;!           "caller": "0xD75b663Eb79ed04771A99b619A72900700eec612"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "max_minus_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "-1"
;!           ],
;!           "caller": "0xBeDE03AE3F5962389AcC57Da6faC24FA57d490B7"
;!         }
;!       ],
;!       "expected": [
;!         "-1"
;!       ]
;!     },
;!     {
;!       "name": "max_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "0x5348958934589349590349059034905903CDF343443AB34344343CCC34343443"
;!           ],
;!           "caller": "0x5052b46BD48157A24Bb5e19d04404B5e83C319a3"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "max_minus_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "-632574534856236475345634624374238423192181237123712631236123123"
;!           ],
;!           "caller": "0xFED23A5a179A42Ae299D5D7e378c2C33186cF13A"
;!         }
;!       ],
;!       "expected": [
;!         "-1"
;!       ]
;!     },
;!     {
;!       "name": "max_max",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "0x7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!           ],
;!           "caller": "0xb0b9E73D7E578542b349d330D0dE4E8beE6ce6c5"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "max_min",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "0x8000000000000000000000000000000000000000000000000000000000000000"
;!           ],
;!           "caller": "0xC67B68c6538B24F94C70f103CA18aAF6A2Aa4EcF"
;!         }
;!       ],
;!       "expected": [
;!         "-1"
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
  %arg1 = call i256 @llvm.evm.calldataload(ptr addrspace(2) %off1)
  %arg2 = call i256 @llvm.evm.calldataload(ptr addrspace(2) %off2)
  %res = call i256 @sar(i256 noundef %arg1, i256 noundef %arg2)
  store i256 %res, ptr addrspace(1) null, align 4
  call void @llvm.evm.return(ptr addrspace(1) null, i256 32)
  unreachable
}

define i256 @sar(i256 %shift, i256 %value) #0 {
entry:
  %is_overflow = icmp ugt i256 %shift, 255
  br i1 %is_overflow, label %arith_overflow, label %shift_value

arith_overflow:
  %is_val_positive = icmp sge i256 %value, 0
  %res_overflow = select i1 %is_val_positive, i256 0, i256 -1
  br label %return

shift_value:
  %shift_res = ashr i256 %value, %shift
  br label %return

return:
  %res = phi i256 [ %res_overflow, %arith_overflow ], [ %shift_res, %shift_value ]
  ret i256 %res
}

declare void @llvm.evm.return(ptr addrspace(1), i256)
declare i256 @llvm.evm.calldataload(ptr addrspace(2))

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone willreturn }
