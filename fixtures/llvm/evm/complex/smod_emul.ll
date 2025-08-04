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
;!           "caller": "0x0bA4729A8aEFe835dB47335AB4A191ffcc1FF915"
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
;!           "caller": "0x7f7fbE5aF02bb9FAAc3a73D4746107623867Ec7c"
;!         }
;!       ],
;!       "expected": [
;!         "0"
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
;!           "caller": "0x8D1cbf0a75D63e63a5C887EC33ed9c2A5458a614"
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
;!           "caller": "0x30c009cC7CA2C106142B69E5CdB2b465a43D719E"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "zero_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0",
;!             "433478394034343"
;!           ],
;!           "caller": "0xcBfaEFb835c08A8960646CAa19F64CBFCbE84b48"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_zero",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "121563127839120",
;!             "0"
;!           ],
;!           "caller": "0x010a84BB935009d25BD4Be240E19D65E9456194b"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "one_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "1",
;!             "433478394034343"
;!           ],
;!           "caller": "0x201F2cc3ADE8D85Bf347531BED71D5ff2C352eE9"
;!         }
;!       ],
;!       "expected": [
;!         "1"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "121563127839120",
;!             "1"
;!           ],
;!           "caller": "0xd4Eec4537E007cBD078aDFe867e974e8Ab53BDA6"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "3456789009876545678",
;!             "45116789098765678"
;!           ],
;!           "caller": "0x1DDF1986383A3bF0cfa2D714891Bf781e47650a7"
;!         }
;!       ],
;!       "expected": [
;!         "27913038370354150"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_ordinar_to_zero",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "15903955902367335447395448984",
;!             "67897657890876"
;!           ],
;!           "caller": "0x677A6aD37143dfF6556FdFF51454c9c49e14B79F"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_plus_one_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x0b000000000000000000000000000000000000000000000000000000000000a2",
;!             "0x0b000000000000000000000000000000000000000000000000000000000000a1"
;!           ],
;!           "caller": "0xC36c426a70b3E0E52F0534778e0BAB1BB4831117"
;!         }
;!       ],
;!       "expected": [
;!         "1"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_ordinar_equals",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "6873546235472354672354762358492378590345034805934590348534",
;!             "6873546235472354672354762358492378590345034805934590348534"
;!           ],
;!           "caller": "0x9FF85D1eB62afedA050ea9776E39a7AB8ADe8458"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_ordinar_plus_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x0b000000000000000000000000000000000000000000000000000000000000a1",
;!             "0x0b000000000000000000000000000000000000000000000000000000000000a2"
;!           ],
;!           "caller": "0x6628cb1Da51708De521735463D7719AbEd530290"
;!         }
;!       ],
;!       "expected": [
;!         "0x0b000000000000000000000000000000000000000000000000000000000000a1"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_bigger_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "456789098765467892304234234234234234234",
;!             "7863249563247857289401203492047823764573465734573434537783"
;!           ],
;!           "caller": "0x6d706CCE379dDb0aC42615c9808d5064D6e50857"
;!         }
;!       ],
;!       "expected": [
;!         "456789098765467892304234234234234234234"
;!       ]
;!     },
;!     {
;!       "name": "zero_max",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0",
;!             "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
;!           ],
;!           "caller": "0x1bd2fd5273D21fB6F19Bf02108153F1557Ac9D3D"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "max_zero",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
;!             "0"
;!           ],
;!           "caller": "0xf1698E71884e0ee0e444f71cBD23D2bd86F999Bf"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "one_max",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "1",
;!             "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
;!           ],
;!           "caller": "0x0e6f2B1C995eBaF413B64e2aEAEF860290d1A9BA"
;!         }
;!       ],
;!       "expected": [
;!         "1"
;!       ]
;!     },
;!     {
;!       "name": "max_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
;!             "1"
;!           ],
;!           "caller": "0xE3cD6dc0adad29C87C62d8252aA113f89f389bdF"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_max",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "7437834752357434334343423343443375834785783474",
;!             "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
;!           ],
;!           "caller": "0xBfaeC0D0d2E4B10191E78A6109234698a040EC03"
;!         }
;!       ],
;!       "expected": [
;!         "7437834752357434334343423343443375834785783474"
;!       ]
;!     },
;!     {
;!       "name": "max_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
;!             "23784273472384723848213821342323233223"
;!           ],
;!           "caller": "0x4c03D800A2Ca43a8CDF8b886edd253972dEee049"
;!         }
;!       ],
;!       "expected": [
;!         "15101022404869751666946096985411952473"
;!       ]
;!     },
;!     {
;!       "name": "max_max",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
;!             "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
;!           ],
;!           "caller": "0xFcA721C99409AFB9BD6d77BAaD6d0EaB41C4e737"
;!         }
;!       ],
;!       "expected": [
;!         "0"
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
;!           "caller": "0x64Fe5e47009E4fE055FE287471189c630982c230"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "minus_one_zero",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "-1",
;!             "0"
;!           ],
;!           "caller": "0x8b2A3154Fa1Bb61814eEd8495b40b32030fCbBFC"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "minus_one_minus_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "-1",
;!             "-1"
;!           ],
;!           "caller": "0x77B472c219819289047eE9E3dDCB9Ed038E605Af"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "zero_minus_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0",
;!             "-433478394034343"
;!           ],
;!           "caller": "0x7404644D720FBb7FdE6209D725afe20A91FbBf66"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "minus_ordinar_zero",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "-121563127839120",
;!             "0"
;!           ],
;!           "caller": "0x5658AeB52B0DFf90C8BE16a1bAd3aBd0B65C85d8"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "minus_one_minus_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "-1",
;!             "-433478394034343"
;!           ],
;!           "caller": "0xF023Fb6b1959Ee0cCaA1F9580D814A38948Dc03B"
;!         }
;!       ],
;!       "expected": [
;!         "-1"
;!       ]
;!     },
;!     {
;!       "name": "minus_ordinar_minus_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "-121563127839120",
;!             "-1"
;!           ],
;!           "caller": "0x8a9D29505404730aA5E5e312Fc61Da3c86733Ad8"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "minus_ordinar_minus_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "-3456789009876545678",
;!             "-45116789098765678"
;!           ],
;!           "caller": "0x1b761A122C9206e3E680D57fD23682CdE12941ee"
;!         }
;!       ],
;!       "expected": [
;!         "-27913038370354150"
;!       ]
;!     },
;!     {
;!       "name": "minus_ordinar_minus_ordinar_to_zero",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "-15903955902367335447395448984",
;!             "-67897657890876"
;!           ],
;!           "caller": "0x3B57B509E6b576497a5124355369DDa7Baa65Fc8"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "minus_ordinar_plus_one_minus_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "-4975441334415930272106565762092058540570194653601742986070443062840017289378",
;!             "-4975441334415930272106565762092058540570194653601742986070443062840017289377"
;!           ],
;!           "caller": "0x5714DbC86dA14f0990ce9a469681f80073d54cAd"
;!         }
;!       ],
;!       "expected": [
;!         "-1"
;!       ]
;!     },
;!     {
;!       "name": "minus_ordinar_minus_ordinar_equals",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "-6873546235472354672354762358492378590345034805934590348534",
;!             "-6873546235472354672354762358492378590345034805934590348534"
;!           ],
;!           "caller": "0x1333457003F5C5ba9bA7DBDe2CAF6f9F505ca34a"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "minus_ordinar_minus_ordinar_plus_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "-4975441334415930272106565762092058540570194653601742986070443062840017289377",
;!             "-4975441334415930272106565762092058540570194653601742986070443062840017289378"
;!           ],
;!           "caller": "0xf514ab5c7aa296544e2EEA399f6d2792a2cf5390"
;!         }
;!       ],
;!       "expected": [
;!         "-4975441334415930272106565762092058540570194653601742986070443062840017289377"
;!       ]
;!     },
;!     {
;!       "name": "minus_ordinar_bigger_minus_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "-456789098765467892304234234234234234234",
;!             "-7863249563247857289401203492047823764573465734573434537783"
;!           ],
;!           "caller": "0x7D58ef29739BC983b31e4D0DEC3eC7C96c63e210"
;!         }
;!       ],
;!       "expected": [
;!         "-456789098765467892304234234234234234234"
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
;!           "caller": "0x413EF0a1F1368cB298ed0531E07ff2D26F44Ccf0"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "min_zero",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x8000000000000000000000000000000000000000000000000000000000000000",
;!             "0"
;!           ],
;!           "caller": "0x810Aae29d066987DE635E2a4953aFc189CEcf73B"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "minus_one_min",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "-1",
;!             "0x8000000000000000000000000000000000000000000000000000000000000000"
;!           ],
;!           "caller": "0xc8C6b7c27C75872A426D433470620AF3B81999c4"
;!         }
;!       ],
;!       "expected": [
;!         "-1"
;!       ]
;!     },
;!     {
;!       "name": "min_minus_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x8000000000000000000000000000000000000000000000000000000000000000",
;!             "-1"
;!           ],
;!           "caller": "0xa7cce6073D2748324c79C87B9325eB83F6439554"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "minus_ordinar_min",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "-7437834752357434334343423343443375834785783474",
;!             "0x8000000000000000000000000000000000000000000000000000000000000000"
;!           ],
;!           "caller": "0xA2B543AbFC22F24f0E61EDcD47992eFf295738EE"
;!         }
;!       ],
;!       "expected": [
;!         "-7437834752357434334343423343443375834785783474"
;!       ]
;!     },
;!     {
;!       "name": "min_minus_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x8000000000000000000000000000000000000000000000000000000000000000",
;!             "-23784273472384723848213821342323233223"
;!           ],
;!           "caller": "0x8B1719a42B3D3e94968413fD68f6B903fdD9C119"
;!         }
;!       ],
;!       "expected": [
;!         "-15101022404869751666946096985411952474"
;!       ]
;!     },
;!     {
;!       "name": "min_min",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x8000000000000000000000000000000000000000000000000000000000000000",
;!             "0x8000000000000000000000000000000000000000000000000000000000000000"
;!           ],
;!           "caller": "0x9DbCf17546f7F1dB6604CA66B2b8EE89433cF963"
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
;!           "caller": "0x7F6cC92FF72FB6F8E17b02a63e783875f69710f0"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "minus_one_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "-1",
;!             "1"
;!           ],
;!           "caller": "0x835C87c8c983D343dE3F37111A107625b4d48bc8"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "one_minus_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "1",
;!             "-433478394034343"
;!           ],
;!           "caller": "0xd69007a174c07C4dD1bD79bF2b0070d0Fc731812"
;!         }
;!       ],
;!       "expected": [
;!         "1"
;!       ]
;!     },
;!     {
;!       "name": "minus_one_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "-1",
;!             "433478394034343"
;!           ],
;!           "caller": "0x9296C27747918d84AaB002BD19c449231124Be55"
;!         }
;!       ],
;!       "expected": [
;!         "-1"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_minus_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "121563127839120",
;!             "-1"
;!           ],
;!           "caller": "0x4855090Af09e1f788C01227f3e637DDb43479f95"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "minus_ordinar_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "-121563127839120",
;!             "1"
;!           ],
;!           "caller": "0xfC6e4F75fbdB7c8aA4ec41ed6791e86E028bC06d"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_minus_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "3456789009876545678",
;!             "-45116789098765678"
;!           ],
;!           "caller": "0x636D9cb83E18fbC53044F1eD0C068729237BD1DB"
;!         }
;!       ],
;!       "expected": [
;!         "27913038370354150"
;!       ]
;!     },
;!     {
;!       "name": "minus_ordinar_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "-3456789009876545678",
;!             "45116789098765678"
;!           ],
;!           "caller": "0x32E0b7113982b50EE40513E0FA2C3029AFaFE9b4"
;!         }
;!       ],
;!       "expected": [
;!         "-27913038370354150"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_minus_ordinar_to_zero",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "15903955902367335447395448984",
;!             "-67897657890876"
;!           ],
;!           "caller": "0x782C83f0229b0441fa56B5cdB098482c98648364"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "minus_ordinar_ordinar_to_zero",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "-15903955902367335447395448984",
;!             "67897657890876"
;!           ],
;!           "caller": "0x49985fEEdcd37b650b2A46BFCb54d97Cf6413AbB"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_plus_one_minus_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "4975441334415930272106565762092058540570194653601742986070443062840017289378",
;!             "-4975441334415930272106565762092058540570194653601742986070443062840017289377"
;!           ],
;!           "caller": "0x44a1901700f051231bf296Df899Af0833F5c864D"
;!         }
;!       ],
;!       "expected": [
;!         "1"
;!       ]
;!     },
;!     {
;!       "name": "minus_ordinar_plus_one_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "-4975441334415930272106565762092058540570194653601742986070443062840017289378",
;!             "4975441334415930272106565762092058540570194653601742986070443062840017289377"
;!           ],
;!           "caller": "0xe3e9CD09C4c4cb8E285A559ba11e7C800f115b84"
;!         }
;!       ],
;!       "expected": [
;!         "-1"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_minus_ordinar_equals",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "6873546235472354672354762358492378590345034805934590348534",
;!             "-6873546235472354672354762358492378590345034805934590348534"
;!           ],
;!           "caller": "0x40DaF683CdDb1E6A8d67727bb97a3f46bBA0e1c1"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "minus_ordinar_ordinar_equals",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "-6873546235472354672354762358492378590345034805934590348534",
;!             "6873546235472354672354762358492378590345034805934590348534"
;!           ],
;!           "caller": "0x3D24840963C83D706185fF36853d959FD2A874AA"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_minus_ordinar_plus_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "4975441334415930272106565762092058540570194653601742986070443062840017289377",
;!             "-4975441334415930272106565762092058540570194653601742986070443062840017289378"
;!           ],
;!           "caller": "0x996d25F66E3709E6d26d4ca78F8E7Cf7ACcf9D36"
;!         }
;!       ],
;!       "expected": [
;!         "4975441334415930272106565762092058540570194653601742986070443062840017289377"
;!       ]
;!     },
;!     {
;!       "name": "minus_ordinar_ordinar_plus_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "-4975441334415930272106565762092058540570194653601742986070443062840017289377",
;!             "4975441334415930272106565762092058540570194653601742986070443062840017289378"
;!           ],
;!           "caller": "0x9E2B9efEeFdFE312416a859a0e592dbcD3eD626f"
;!         }
;!       ],
;!       "expected": [
;!         "-4975441334415930272106565762092058540570194653601742986070443062840017289377"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_bigger_minus_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "456789098765467892304234234234234234234",
;!             "-7863249563247857289401203492047823764573465734573434537783"
;!           ],
;!           "caller": "0x002f9c14EF5dF5e47F03194Ef73AdA2b0dC57074"
;!         }
;!       ],
;!       "expected": [
;!         "456789098765467892304234234234234234234"
;!       ]
;!     },
;!     {
;!       "name": "minus_ordinar_bigger_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "-456789098765467892304234234234234234234",
;!             "7863249563247857289401203492047823764573465734573434537783"
;!           ],
;!           "caller": "0x1D7724a644664f320a470d17fc6e84F89B8013D9"
;!         }
;!       ],
;!       "expected": [
;!         "-456789098765467892304234234234234234234"
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
;!           "caller": "0x6c741b89109c30667B05C060Ff95E7514A2062Ac"
;!         }
;!       ],
;!       "expected": [
;!         "1"
;!       ]
;!     },
;!     {
;!       "name": "minus_one_max",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "-1",
;!             "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
;!           ],
;!           "caller": "0xcb3b281984Bd295C44DDBccFF38f3dA431cCB56a"
;!         }
;!       ],
;!       "expected": [
;!         "-1"
;!       ]
;!     },
;!     {
;!       "name": "max_minus_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
;!             "-1"
;!           ],
;!           "caller": "0xC7C51e0177a53FE55393bbaf4242d27103F476e0"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "min_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x8000000000000000000000000000000000000000000000000000000000000000",
;!             "1"
;!           ],
;!           "caller": "0x1FaD61A29877D1e99AC8BcAFc03D29d1Fa472925"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_min",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "7437834752357434334343423343443375834785783474",
;!             "0x8000000000000000000000000000000000000000000000000000000000000000"
;!           ],
;!           "caller": "0xd24A2A4a7673b4ffd0d3b868dF7F3BaFB9A4508B"
;!         }
;!       ],
;!       "expected": [
;!         "7437834752357434334343423343443375834785783474"
;!       ]
;!     },
;!     {
;!       "name": "minus_ordinar_max",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "-7437834752357434334343423343443375834785783474",
;!             "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
;!           ],
;!           "caller": "0x71E65aAc5E8Bb53aC53DC8b9FeFe95344Bb0B963"
;!         }
;!       ],
;!       "expected": [
;!         "-7437834752357434334343423343443375834785783474"
;!       ]
;!     },
;!     {
;!       "name": "max_minus_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
;!             "-23784273472384723848213821342323233223"
;!           ],
;!           "caller": "0xb6627C20F5689E9B6ca0b825aAA6b94B35320DdB"
;!         }
;!       ],
;!       "expected": [
;!         "15101022404869751666946096985411952473"
;!       ]
;!     },
;!     {
;!       "name": "min_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x8000000000000000000000000000000000000000000000000000000000000000",
;!             "23784273472384723848213821342323233223"
;!           ],
;!           "caller": "0x213C955fe99db215e71E50267fBA5fCABCBD1185"
;!         }
;!       ],
;!       "expected": [
;!         "-15101022404869751666946096985411952474"
;!       ]
;!     },
;!     {
;!       "name": "max_min",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
;!             "0x8000000000000000000000000000000000000000000000000000000000000000"
;!           ],
;!           "caller": "0x70088d2974DED24b6B225A00d37A99DD0C45D511"
;!         }
;!       ],
;!       "expected": [
;!         "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
;!       ]
;!     },
;!     {
;!       "name": "min_max",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x8000000000000000000000000000000000000000000000000000000000000000",
;!             "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
;!           ],
;!           "caller": "0x0c8CaFc1FcB5fF6028092B324b183c459935CF36"
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
  %res = call i256 @smod(i256 noundef %arg1, i256 noundef %arg2)
  store i256 %res, ptr addrspace(1) null, align 4
  call void @llvm.evm.return(ptr addrspace(1) null, i256 32)
  unreachable
}

define i256 @smod(i256 %arg1, i256 %arg2) #0 {
entry:
  %is_divider_zero = icmp eq i256 %arg2, 0
  br i1 %is_divider_zero, label %return, label %division_overflow

division_overflow:
  %is_divided_int_min = icmp eq i256 %arg1, -57896044618658097711785492504343953926634992332820282019728792003956564819968
  %is_minus_one = icmp eq i256 %arg2, -1
  %is_overflow = and i1 %is_divided_int_min, %is_minus_one
  br i1 %is_overflow, label %return, label %remainder

remainder:
  %rem_res = srem i256 %arg1, %arg2
  br label %return

return:
  %res = phi i256 [ 0, %entry ], [ 0, %division_overflow ], [ %rem_res, %remainder ]
  ret i256 %res
}

declare void @llvm.evm.return(ptr addrspace(1), i256)
declare i256 @llvm.evm.calldataload(ptr addrspace(2))

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone willreturn }
