//! {
//!   "cases": [
//!     {
//!       "name": "zero_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "0"
//!           ],
//!           "caller": "0x3B92EdB6Ef5afFf91DBf2B63E56B4C0175F92301"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "zero_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "1"
//!           ],
//!           "caller": "0xBb74441DC3B71c6FF544Ea6032cEcAD7c9EAd783"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "zero_minus_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "-1"
//!           ],
//!           "caller": "0xA26E0576547AeCC3264714a2F0a9428D91192a77"
//!         }
//!       ],
//!       "expected": [
//!         "-1"
//!       ]
//!     },
//!     {
//!       "name": "zero_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "0x5348958934589349590349059034905903CDF343443AB34344343CCC34343443"
//!           ],
//!           "caller": "0x6aB6792f51ac7eB4FE0f0Dd6ff5526EbF5787CAe"
//!         }
//!       ],
//!       "expected": [
//!         "0x5348958934589349590349059034905903CDF343443AB34344343CCC34343443"
//!       ]
//!     },
//!     {
//!       "name": "zero_minus_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "-632574534856236475345634624374238423192181237123712631236123123"
//!           ],
//!           "caller": "0x214A72E40eb3fb5A837eB47C24c3660149ba8e52"
//!         }
//!       ],
//!       "expected": [
//!         "-632574534856236475345634624374238423192181237123712631236123123"
//!       ]
//!     },
//!     {
//!       "name": "zero_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "0x7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0x92fBfA363a1d04bab7c296af4f5A50303791B543"
//!         }
//!       ],
//!       "expected": [
//!         "0x7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!       ]
//!     },
//!     {
//!       "name": "zero_min",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "0x8000000000000000000000000000000000000000000000000000000000000000"
//!           ],
//!           "caller": "0xDBa02A942650Eb93Cf2566DBcb7d945b9544AFCd"
//!         }
//!       ],
//!       "expected": [
//!         "0x8000000000000000000000000000000000000000000000000000000000000000"
//!       ]
//!     },
//!     {
//!       "name": "one_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "0"
//!           ],
//!           "caller": "0xB5143e0b0dCAd40ff9b83F8C94e22882aa29a790"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "one_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "1"
//!           ],
//!           "caller": "0xD0a07d76B92AB19A0c378C4119EdeF88d82d9f59"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "one_minus_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "-1"
//!           ],
//!           "caller": "0xB481F4C3EC995D9C550B7e41bAAae95FEE4591b1"
//!         }
//!       ],
//!       "expected": [
//!         "-1"
//!       ]
//!     },
//!     {
//!       "name": "one_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "0x5348958934589349590349059034905903CDF343443AB34344343CCC34343443"
//!           ],
//!           "caller": "0x633A1fdF67b3ca03f07BBa053bfa2Cf5Bf9FF285"
//!         }
//!       ],
//!       "expected": [
//!         "0x29A44AC49A2C49A4AC81A482C81A482C81E6F9A1A21D59A1A21A1E661A1A1A21"
//!       ]
//!     },
//!     {
//!       "name": "one_minus_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "-632574534856236475345634624374238423192181237123712631236123123"
//!           ],
//!           "caller": "0x54C5CDc84f0a62c4D7dBEAB3a6EB6127def7D620"
//!         }
//!       ],
//!       "expected": [
//!         "-316287267428118237672817312187119211596090618561856315618061562"
//!       ]
//!     },
//!     {
//!       "name": "one_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "0x7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0x720760a40193f0c6d8A388e51f0f347792Fdc7F4"
//!         }
//!       ],
//!       "expected": [
//!         "0x3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!       ]
//!     },
//!     {
//!       "name": "one_min",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "0x8000000000000000000000000000000000000000000000000000000000000000"
//!           ],
//!           "caller": "0xbC3faE225A71B40aE4a98Dd269Fc92621EB9966F"
//!         }
//!       ],
//!       "expected": [
//!         "0xC000000000000000000000000000000000000000000000000000000000000000"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_bytes_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "40",
//!             "0"
//!           ],
//!           "caller": "0xE5321E8A55Ed4E621CF278Dbd8bF9a795FfE0cD2"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_bytes_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "40",
//!             "1"
//!           ],
//!           "caller": "0x04b3E74762823b5c573000485393c557FC3422a2"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_bytes_minus_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "40",
//!             "-1"
//!           ],
//!           "caller": "0xE9f5B4CC30835F60514D5df4AA2AeCc26ACe80d3"
//!         }
//!       ],
//!       "expected": [
//!         "-1"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_bytes_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "40",
//!             "0x5348958934589349590349059034905903CDF343443AB34344343CCC34343443"
//!           ],
//!           "caller": "0xe40f33d47Ed9D58773994846EA750C6d95A01995"
//!         }
//!       ],
//!       "expected": [
//!         "0x00000000005348958934589349590349059034905903CDF343443AB34344343C"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_bytes_minus_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "40",
//!             "-632574534856236475345634624374238423192181237123712631236123123"
//!           ],
//!           "caller": "0xe19C759be79074c23fE3C7E0E8B142255c39CDa0"
//!         }
//!       ],
//!       "expected": [
//!         "-575323187928221591706128151030714819346195542606177"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_bytes_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "40",
//!             "0x7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0x4Ad2b3855dd6f49B9ECC127FEd83109D05182D37"
//!         }
//!       ],
//!       "expected": [
//!         "0x00000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_bytes_min",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "40",
//!             "0x8000000000000000000000000000000000000000000000000000000000000000"
//!           ],
//!           "caller": "0xd6dD681601b7f2C812A767B23be09Ded5A563efD"
//!         }
//!       ],
//!       "expected": [
//!         "0xFFFFFFFFFF800000000000000000000000000000000000000000000000000000"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "171",
//!             "0"
//!           ],
//!           "caller": "0x3EB54d5897c729b8D6310Cd8327eCbC21b8BfeFB"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "171",
//!             "1"
//!           ],
//!           "caller": "0xe2A8383B40925EB328458CF7839A03760FDB755d"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_minus_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "171",
//!             "-1"
//!           ],
//!           "caller": "0x9CEd1cF5397A779b83B67F962B1b2d6CfC9aa539"
//!         }
//!       ],
//!       "expected": [
//!         "-1"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "171",
//!             "0x5348958934589349590349059034905903CDF343443AB34344343CCC34343443"
//!           ],
//!           "caller": "0x72052606745c0309272399E36A5A7018D0519123"
//!         }
//!       ],
//!       "expected": [
//!         "0xA6912B1268B12692B2069"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_minus_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "171",
//!             "-632574534856236475345634624374238423192181237123712631236123123"
//!           ],
//!           "caller": "0x8D24ab80158A817bfeCD44DeFab55173Fe20eF23"
//!         }
//!       ],
//!       "expected": [
//!         "-211340361659"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "171",
//!             "0x7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0x2F9bf0972A56A8d234bE0Be07dE4E6E30A3b4f44"
//!         }
//!       ],
//!       "expected": [
//!         "0x0000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFF"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_min",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "171",
//!             "0x8000000000000000000000000000000000000000000000000000000000000000"
//!           ],
//!           "caller": "0x16725a5FCda01ccEB5fe5f988818F14fa9Aa77C1"
//!         }
//!       ],
//!       "expected": [
//!         "-19342813113834066795298816"
//!       ]
//!     },
//!     {
//!       "name": "254_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "254",
//!             "0"
//!           ],
//!           "caller": "0xB16c502CE3Ba41dF5Ba282a87893856210e0e083"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "254_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "254",
//!             "1"
//!           ],
//!           "caller": "0xcf8fFE59Cc462a899941e33C2599A5fccdB2FdE2"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "254_minus_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "254",
//!             "-1"
//!           ],
//!           "caller": "0x3205B46bd89a1A17a85A1F509d17d9CaFE14b0f6"
//!         }
//!       ],
//!       "expected": [
//!         "-1"
//!       ]
//!     },
//!     {
//!       "name": "254_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "254",
//!             "0x5348958934589349590349059034905903CDF343443AB34344343CCC34343443"
//!           ],
//!           "caller": "0x9AF1D0C92894dd5f9C0A07c4Ec4f3C516854C274"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "254_minus_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "254",
//!             "-632574534856236475345634624374238423192181237123712631236123123"
//!           ],
//!           "caller": "0xd173828112EdC8aD0eC3880c6F7b8E4C456628f2"
//!         }
//!       ],
//!       "expected": [
//!         "-1"
//!       ]
//!     },
//!     {
//!       "name": "254_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "254",
//!             "0x7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0x6cDC5892C0b752903ea57405E954CD2fB9B67671"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "254_min",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "254",
//!             "0x8000000000000000000000000000000000000000000000000000000000000000"
//!           ],
//!           "caller": "0x49728bA4D108e7aA70C493F1E806db332A0e22e4"
//!         }
//!       ],
//!       "expected": [
//!         "-2"
//!       ]
//!     },
//!     {
//!       "name": "255_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "255",
//!             "0"
//!           ],
//!           "caller": "0x4A8e19081dC62191Cafc56Ac8222Ce9149189425"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "255_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "255",
//!             "1"
//!           ],
//!           "caller": "0xdDae2b2022B9F0c0E2b10137Df47b1cB77b19054"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "255_minus_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "255",
//!             "-1"
//!           ],
//!           "caller": "0x7b4CD0907D1c1D9c38084c0408489Ba7b0646255"
//!         }
//!       ],
//!       "expected": [
//!         "-1"
//!       ]
//!     },
//!     {
//!       "name": "255_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "255",
//!             "0x5348958934589349590349059034905903CDF343443AB34344343CCC34343443"
//!           ],
//!           "caller": "0x5cC15e1bd4B4A1Aa8c440FA364B5Cdbd9cDd0C51"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "255_minus_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "255",
//!             "-632574534856236475345634624374238423192181237123712631236123123"
//!           ],
//!           "caller": "0x64dbd87A985C79C9fE1b5dE556026099C9da3797"
//!         }
//!       ],
//!       "expected": [
//!         "-1"
//!       ]
//!     },
//!     {
//!       "name": "255_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "255",
//!             "0x7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0x31CE35f47F80956ea25b8f27048f66Ae828d718A"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "255_min",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "255",
//!             "0x8000000000000000000000000000000000000000000000000000000000000000"
//!           ],
//!           "caller": "0x9bfb3da3F386D56e9663C7cD610794755b83f28A"
//!         }
//!       ],
//!       "expected": [
//!         "-1"
//!       ]
//!     },
//!     {
//!       "name": "256_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "256",
//!             "0"
//!           ],
//!           "caller": "0xe3E15f9bCe80862de99b5dE5a03B2f7A8662fD83"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "256_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "256",
//!             "1"
//!           ],
//!           "caller": "0x2e35AE7a9a046607CA3C4AF3f5c23f78C6F7B510"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "256_minus_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "256",
//!             "-1"
//!           ],
//!           "caller": "0xB3a8822B06E9EEd9b1b2b8bdca82Dc414a728B15"
//!         }
//!       ],
//!       "expected": [
//!         "-1"
//!       ]
//!     },
//!     {
//!       "name": "256_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "256",
//!             "0x5348958934589349590349059034905903CDF343443AB34344343CCC34343443"
//!           ],
//!           "caller": "0xE91d66e2911972b8Eae2c1B317a931AD6fe7d35a"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "256_minus_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "256",
//!             "-632574534856236475345634624374238423192181237123712631236123123"
//!           ],
//!           "caller": "0x1c534806104A198Fb252d2E34480fB18caB36Deb"
//!         }
//!       ],
//!       "expected": [
//!         "-1"
//!       ]
//!     },
//!     {
//!       "name": "256_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "256",
//!             "0x7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0x9E923a24B2A214853bD21bCbe4b6F2DdE5F4350F"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "256_min",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "256",
//!             "0x8000000000000000000000000000000000000000000000000000000000000000"
//!           ],
//!           "caller": "0xE9B2afa2B14a8B3e464d01A42597A1579c044110"
//!         }
//!       ],
//!       "expected": [
//!         "-1"
//!       ]
//!     },
//!     {
//!       "name": "big_ordinar_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "35242523534534534233424343343443",
//!             "0"
//!           ],
//!           "caller": "0x87ea5230be0665be4887D399a3fa00332f600CCd"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "big_ordinar_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "35242523534534534233424343343443",
//!             "1"
//!           ],
//!           "caller": "0xDD8009631480Ba0C1E4AAd0784807254c7De6d4b"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "big_ordinar_minus_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "35242523534534534233424343343443",
//!             "-1"
//!           ],
//!           "caller": "0x7E7EAb8eDeC69a432Ad20DF08599541d45a99EFd"
//!         }
//!       ],
//!       "expected": [
//!         "-1"
//!       ]
//!     },
//!     {
//!       "name": "big_ordinar_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "35242523534534534233424343343443",
//!             "0x5348958934589349590349059034905903CDF343443AB34344343CCC34343443"
//!           ],
//!           "caller": "0xe9F9bB5fac52389DcC1cE40E48227228779b1576"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "big_ordinar_minus_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "35242523534534534233424343343443",
//!             "-632574534856236475345634624374238423192181237123712631236123123"
//!           ],
//!           "caller": "0x9a39bb17e4F1709E691FCB1588d311AEC7E50932"
//!         }
//!       ],
//!       "expected": [
//!         "-1"
//!       ]
//!     },
//!     {
//!       "name": "big_ordinar_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "35242523534534534233424343343443",
//!             "0x7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0x17439bBf9D9591377918042daFEEE5735b971AC6"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "big_ordinar_min",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "35242523534534534233424343343443",
//!             "0x8000000000000000000000000000000000000000000000000000000000000000"
//!           ],
//!           "caller": "0xD5c62623E9110709D50D694392b3a64da65afe8A"
//!         }
//!       ],
//!       "expected": [
//!         "-1"
//!       ]
//!     },
//!     {
//!       "name": "max_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "0"
//!           ],
//!           "caller": "0x26cCf493f1dC916C080dadFB0B102E38E480DE48"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "max_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "1"
//!           ],
//!           "caller": "0x53c85917d0B12787De827E875Fa7291D267cDafE"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "max_minus_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "-1"
//!           ],
//!           "caller": "0xb27b419D90293f3720C5D3175aE0D47f23Ec095d"
//!         }
//!       ],
//!       "expected": [
//!         "-1"
//!       ]
//!     },
//!     {
//!       "name": "max_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "0x5348958934589349590349059034905903CDF343443AB34344343CCC34343443"
//!           ],
//!           "caller": "0x63Dc513cBaBACd3140452351B2971b45d0a661F6"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "max_minus_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "-632574534856236475345634624374238423192181237123712631236123123"
//!           ],
//!           "caller": "0xF8f501e98daaD5eEb6aa01389da307c71dD02f2d"
//!         }
//!       ],
//!       "expected": [
//!         "-1"
//!       ]
//!     },
//!     {
//!       "name": "max_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "0x7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0x25A03D8Cc3c44A810557b25A08eC216A5c19B023"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "max_min",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "0x8000000000000000000000000000000000000000000000000000000000000000"
//!           ],
//!           "caller": "0x903EeFAC497BcD5114363bD0767f9796e3F68505"
//!         }
//!       ],
//!       "expected": [
//!         "-1"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.21;

contract Test {
    function main(uint256 a, uint256 b) external pure returns(uint256 result) {
        assembly {
            result := sar(a, b)
        }
    }
}
