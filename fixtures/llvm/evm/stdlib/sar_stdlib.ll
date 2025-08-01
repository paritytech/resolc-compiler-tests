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
;!           "caller": "0xfF89070be7B8cD535bF72Ed75C9E851B5f583d92"
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
;!           "caller": "0x5FEdDc6D9fdc6E4c3417a4FA0c642995aD0180F2"
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
;!           "caller": "0x4514F62DDed70f961D5259e501B25751CBa27949"
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
;!           "caller": "0xCdd9382a9Bf703f69DADF95AF276F19B2eeCdcAb"
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
;!           "caller": "0x53388155167Dec0841CDA26EBd636c7dA8601614"
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
;!           "caller": "0x0113C554a6eCcb85922278001bec41f83dEd87D9"
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
;!           "caller": "0x19cf38009Ade03b5019F1c0aaDe8639b187bE5be"
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
;!           "caller": "0x222c5888ff54fA44eA70c10b707132a7593562B8"
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
;!           "caller": "0x1EF8F95282351b9F3Fc4A1bc411FAE5969AE5B51"
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
;!           "caller": "0x120A8381Fc7c763a827567Fc51f5B0D506694d06"
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
;!           "caller": "0x585B2c452314505765896F9817D2A3f9e1DcE352"
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
;!           "caller": "0x628e7c93D20e21455EcE8f3678Dda58F9386f975"
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
;!           "caller": "0x0D69976493C09b07137C343c9075292da98e5803"
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
;!           "caller": "0xbC0a586893baF019C0f8F187D0addC9e7D7218f7"
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
;!           "caller": "0x48339524be1761F68bB8B8A0eb71fE241520a597"
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
;!           "caller": "0x5c1873F59944218bEead83fF2B37981bFf1f3A15"
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
;!           "caller": "0xDd11D9285d235ee041bF98301aFF543247D98170"
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
;!           "caller": "0x34d5e8848a90004D8bE5552F89dB8d547Ab7aCFA"
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
;!           "caller": "0x28ca6460072BeA0d6162E2ff90635a7ceD904CE2"
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
;!           "caller": "0x1C33fD7D968D19A69Bfe49223811f2bB8C51C32A"
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
;!           "caller": "0xdE0a17A44F4591f74F11913889D8134100DAb7D4"
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
;!           "caller": "0x3E9aB8702Ebe585765b35866655318CcD86b2766"
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
;!           "caller": "0x0183BdDcA4D57B038d7757DEBf59D7e3dA0ec81E"
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
;!           "caller": "0xd2059a53330d0736D02139BDD6c02450AcE0A7b8"
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
;!           "caller": "0x21AC0eBeb78f34249b7d9c74748C048F606F62cB"
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
;!           "caller": "0x5F6DD5D3C96BC3186823fb38B7cC89eFf57477F8"
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
;!           "caller": "0x95dDDeaE4C141DcC824CA4dEDCaf6D174174b1Bf"
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
;!           "caller": "0xCa90ECD5584d6fea4Ca4Ac95284473E383b19FFa"
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
;!           "caller": "0x10F54858FE74397649bD62EFd10a0948D88fce34"
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
;!           "caller": "0xBaC7E4193fBDa9121081C5D272CE12d062117fe7"
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
;!           "caller": "0x298141bc5f6A7dBA4C8320cEc964D7450458cEF8"
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
;!           "caller": "0x9eF539E7b67aC21d9782f491dDcF4f75d3deE737"
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
;!           "caller": "0xdE50aE547F2cA35c713541ADe494491423c75b0e"
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
;!           "caller": "0x9e9d6b5A20e451Ba2dd9c712b5773e77dd9DC949"
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
;!           "caller": "0xa9993Aa7cb24315ceA8D77ed1dEC0B29DE63Ef7c"
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
;!           "caller": "0x29C57c5A7ed501EA1bBa607ae1156EE9537805Ab"
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
;!           "caller": "0x1A69f8f0b7a1218cA1a43F5C525a1cbD122b7dC7"
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
;!           "caller": "0xE175d2cA1689aC43cb760FBeB5769fb6C0cb8F50"
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
;!           "caller": "0x86Fa52e53f4480eE9f21142387b94d7eF9FF1AA0"
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
;!           "caller": "0xC22Ada8092316AA01D4aFf1F408d3def56848fc3"
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
;!           "caller": "0x048D61728370743340C99217C470862D76FC8c43"
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
;!           "caller": "0x3443B4a27B7ACbB9981594A78f7CcB8b00907e23"
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
;!           "caller": "0x157E51C6eeBD67263aAA33254574B3119B533413"
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
;!           "caller": "0x932A7700198DBa3be142D326187e3D74E02F616c"
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
;!           "caller": "0x628FF4Aa04863d61BA0058b1ED65D325943A05eE"
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
;!           "caller": "0x177552355e148b6478f1Ec76B77eE8507e9f85C3"
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
;!           "caller": "0x71128dDfDcC52C05fe0A42226046a9Cf4Fd358E6"
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
;!           "caller": "0x6d93f112D02025301378ac14366092C5965de77e"
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
;!           "caller": "0xAAcc0D450fD12D0edDc97297fb9348240Ea8eC60"
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
;!           "caller": "0x8ADef81D3AfD683ca0ada407e22Ca509646dE8f8"
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
;!           "caller": "0x2617eadA7542470d41599aD13d7F98Ca7B64ee43"
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
;!           "caller": "0x8e2863b7DFC07be5A3300774D7C59103D631Ff43"
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
;!           "caller": "0xd63CCA0bA9993AE5A482ce9f999295799EfAAa79"
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
;!           "caller": "0x05014c23Dd0c7e15AA02BCbbeE738369f3067AaD"
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
;!           "caller": "0xa89EfCbeBDf80D32682384c95A6a7447c6913A82"
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
;!           "caller": "0x46811C5991970df28952a96086d668c5A2d23955"
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
;!           "caller": "0x81664b6f378c89856809FA7d34F181d2A571c533"
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
;!           "caller": "0x9ee0ecC118c853F983c4a12A8425F7f16bBF4D5f"
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
;!           "caller": "0x968f3f61539B5a1C96963C16406c50cc546057eB"
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
;!           "caller": "0x07a14f680A9C2F66358DFe032e295E3a90716598"
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
;!           "caller": "0x361a6542A0E50F0a8B7f9c18E055ab250EaCa914"
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
;!           "caller": "0x176b325322aFdD1e81cD3C58e27eB668054115FF"
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
;!           "caller": "0x9f70E259f975A36d02392809707F4fDeAbc9Fa34"
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
  %res = call i256 @__sar(i256 noundef %arg1, i256 noundef %arg2)
  store i256 %res, ptr addrspace(1) null, align 4
  call void @llvm.evm.return(ptr addrspace(1) null, i256 32)
  unreachable
}

declare i256 @__sar(i256 %arg1, i256 %arg2) #0
declare void @llvm.evm.return(ptr addrspace(1), i256)
declare i256 @llvm.evm.calldataload(ptr addrspace(2))

attributes #0 = { alwaysinline mustprogress nofree norecurse nosync nounwind readnone willreturn }
