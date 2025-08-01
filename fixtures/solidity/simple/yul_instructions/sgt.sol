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
//!           "caller": "0xe98EC2FeabEa35DF060B989E1F638B56E7D2D5ec"
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
//!           "caller": "0x5a40382AED8Bcf93061bD5D6643F067Ec7595832"
//!         }
//!       ],
//!       "expected": [
//!         "0"
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
//!           "caller": "0x5208c99722F2Cee12aFc0A27a756aAC3F19C779D"
//!         }
//!       ],
//!       "expected": [
//!         "1"
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
//!           "caller": "0xacc466CFC3F47d93c89cf6a5175055d3BA7e4736"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "zero_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "433478394034343"
//!           ],
//!           "caller": "0x3F4EDF12AD26BC6c6Ad06b63252f860a14812822"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "121563127839120",
//!             "0"
//!           ],
//!           "caller": "0x888415B6355508Fe83Adb87BacBd1568a1BeF7E7"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "one_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "433478394034343"
//!           ],
//!           "caller": "0x5FbD3DFC6B7140cC6E60fB7a52f453e47af6DDA8"
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
//!             "121563127839120",
//!             "1"
//!           ],
//!           "caller": "0x56F980028562D297bbDcB0e64354D12362E64949"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_less",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "4511678909876567343489",
//!             "3456789009876545678"
//!           ],
//!           "caller": "0xedaA9D186754866834bbAB821a2910328330e0D0"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_minus_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "8362543825632458632465973420523238477347382874",
//!             "8362543825632458632465973420523238477347382873"
//!           ],
//!           "caller": "0x6c1d7d71c60844E8937a9CBd21bD15411DdD5Ef7"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_equals",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "6873546235472354672354762358492378590345034805934590348534",
//!             "6873546235472354672354762358492378590345034805934590348534"
//!           ],
//!           "caller": "0xbE093db9909879bf958D93D3Ba4dd5B3e58D033C"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_plus_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0x0b000000000000000000000000000000000000000000000000000000000000a1",
//!             "0x0b000000000000000000000000000000000000000000000000000000000000a2"
//!           ],
//!           "caller": "0xd3E0D3e17F0EBC078331a355380955be977eF8CE"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_greater",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0x0fff1ffffffffff5ffffff0fffffffff2ffffffafffafffcffff1ff234ffffff",
//!             "0x7f231ffffffffff4f12fff34ffffffff2fffffbbfffafffdffff22f538ffffff"
//!           ],
//!           "caller": "0x647AA3E2FcfBBcF82826712Dd7CA4A226ac15a3E"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "zero_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0x8dB85a52a967F521f060e7450b9881eD25fcdAB8"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "max_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "0"
//!           ],
//!           "caller": "0x260A6429074AdC5D53b2F00a365b40852d8bd0fb"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "one_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0xca4848b09a9430d856C422C5b5bb2D1C6595345f"
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
//!             "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "1"
//!           ],
//!           "caller": "0xBCd5ae96ec7E8199bD200a0c2C781c53a672218E"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "7437834752357434334343423343443375834785783474",
//!             "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0x823C406B85bD63f7bAc5EfC1a7e7180adEDb9cBA"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "max_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "23784273472384723848213821342323233223"
//!           ],
//!           "caller": "0x64ad5F23b909CBaD3036Cad56b813730D68F7e13"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "max_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0x30a87229974FF09dF024966E86Cf9002Fb964e1f"
//!         }
//!       ],
//!       "expected": [
//!         "0"
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
//!           "caller": "0x0e62613467800fDE49EDC8B72BAaB539Cf9f550E"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "minus_one_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-1",
//!             "0"
//!           ],
//!           "caller": "0x73C2159D687629C39029667654Df233593774FDb"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "minus_one_minus_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-1",
//!             "-1"
//!           ],
//!           "caller": "0xF2926a7E214fDbf709E27055D2949E9c60EE6694"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "zero_minus_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "-433478394034343"
//!           ],
//!           "caller": "0xF014EE87A0aa6AcA8310B4A8041cE19623219c7D"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "minus_ordinar_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-121563127839120",
//!             "0"
//!           ],
//!           "caller": "0x6Cf1E2b7Fdbe03292C08231d33AaE9e7a8fbCc81"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "minus_one_minus_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-1",
//!             "-433478394034343"
//!           ],
//!           "caller": "0xD612B6B9eaB97d7CD31BA173b200261F9cA983ba"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "minus_ordinar_minus_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-121563127839120",
//!             "-1"
//!           ],
//!           "caller": "0x2b754fcC559fEF7d5A45366d9f7AaB2A0d28EbF2"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "minus_ordinar_minus_ordinar_less",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-4511678909876567343489",
//!             "-3456789009876545678"
//!           ],
//!           "caller": "0x6F8A9C2A2d05E0eC14d907a9c5Cd8efd479823e2"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "minus_ordinar_minus_ordinar_minus_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-8362543825632458632465973420523238477347382874",
//!             "-8362543825632458632465973420523238477347382873"
//!           ],
//!           "caller": "0xD739023cc1Ee45f516b571F78C31c8435D1123D0"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "minus_ordinar_minus_ordinar_equals",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-6873546235472354672354762358492378590345034805934590348534",
//!             "-6873546235472354672354762358492378590345034805934590348534"
//!           ],
//!           "caller": "0x04B920174de341d713b958179aC464c7a897DB50"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "minus_ordinar_minus_ordinar_plus_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-4975441334415930272106565762092058540570194653601742986070443062840017289377",
//!             "-4975441334415930272106565762092058540570194653601742986070443062840017289378"
//!           ],
//!           "caller": "0x2Cc8085E2b52A74B09095a42c0eeA861Ae3B9641"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "minus_ordinar_minus_ordinar_greater",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-7235459586150581064913783473102643589076950968712335714126511324781405536255",
//!             "-57505792273225172003577460839743825359377213102520121190104719553798906839039"
//!           ],
//!           "caller": "0x65ADD000a6383CBE5652757c35AB4277BaCBAb38"
//!         }
//!       ],
//!       "expected": [
//!         "1"
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
//!           "caller": "0x1f8295B91a4090A530AFE39941521CDE78609992"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "min_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0x8000000000000000000000000000000000000000000000000000000000000000",
//!             "0"
//!           ],
//!           "caller": "0xa54512301f9D9355a51FB60B7A297f7c8ED4A8eE"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "minus_one_min",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-1",
//!             "0x8000000000000000000000000000000000000000000000000000000000000000"
//!           ],
//!           "caller": "0xf02f74fD01d39f044Da4f9B0F3A97b22FF133b6c"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "min_minus_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0x8000000000000000000000000000000000000000000000000000000000000000",
//!             "-1"
//!           ],
//!           "caller": "0x3a2fA241E0afb0DB0Ea878f1BFEEC4BCF468c4c0"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "minus_ordinar_min",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-7437834752357434334343423343443375834785783474",
//!             "0x8000000000000000000000000000000000000000000000000000000000000000"
//!           ],
//!           "caller": "0x258D0c30495C06744755d9d0975595Ff4868B3a8"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "min_minus_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0x8000000000000000000000000000000000000000000000000000000000000000",
//!             "-23784273472384723848213821342323233223"
//!           ],
//!           "caller": "0xfE7D1130D9497E3b9d5EFeE4d2f66fcD2e229B1F"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "min_min",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0x8000000000000000000000000000000000000000000000000000000000000000",
//!             "0x8000000000000000000000000000000000000000000000000000000000000000"
//!           ],
//!           "caller": "0x234f2fF3E6F7cbb92a73FCC6a0A007317b7D07F5"
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
//!           "caller": "0xE35108f5eEec6FE8bA95C350A3732BcD90252370"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "minus_one_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-1",
//!             "1"
//!           ],
//!           "caller": "0x0b5082e62FaE1c3707d97B4Ea2d38A5a2085781e"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "one_minus_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "-433478394034343"
//!           ],
//!           "caller": "0xF2Eac974F67f1D04ae815f7fB1fA5F85b266bCCa"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "minus_one_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-1",
//!             "433478394034343"
//!           ],
//!           "caller": "0x5f20B4803D18052fE6A43472480Aefb76FA37740"
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
//!             "121563127839120",
//!             "-1"
//!           ],
//!           "caller": "0xAd0d3e72715814E225B72AFdDf2627C7Ee4855a1"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "minus_ordinar_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-121563127839120",
//!             "1"
//!           ],
//!           "caller": "0x5cc973E87dcE6A6373F58BA47692d885c1eBD53C"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_minus_ordinar_less",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "4511678909876567343489",
//!             "-3456789009876545678"
//!           ],
//!           "caller": "0x062E3Ab45A3F862C91c33D43Ef69F9B3416A9f02"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "minus_ordinar_ordinar_less",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-4511678909876567343489",
//!             "3456789009876545678"
//!           ],
//!           "caller": "0x7C49f86C5826f8969FC7E562d7a8c1E1E8a3aEe2"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_minus_ordinar_minus_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "8362543825632458632465973420523238477347382874",
//!             "-8362543825632458632465973420523238477347382873"
//!           ],
//!           "caller": "0x14290363d6485874dBB976BA25425fA9b1942979"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "minus_ordinar_ordinar_minus_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-8362543825632458632465973420523238477347382874",
//!             "8362543825632458632465973420523238477347382873"
//!           ],
//!           "caller": "0x63f26b756a25dE211a7e7ba3562AB191975930f0"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_minus_ordinar_equals",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "6873546235472354672354762358492378590345034805934590348534",
//!             "-6873546235472354672354762358492378590345034805934590348534"
//!           ],
//!           "caller": "0x9416486A6B4E54cf8916DEC0c3180f891b588737"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "minus_ordinar_ordinar_equals",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-6873546235472354672354762358492378590345034805934590348534",
//!             "6873546235472354672354762358492378590345034805934590348534"
//!           ],
//!           "caller": "0x3bCb0dBF238d1BC73F29f1E9D4d39Ff13DF9b302"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_minus_ordinar_plus_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "4975441334415930272106565762092058540570194653601742986070443062840017289377",
//!             "-4975441334415930272106565762092058540570194653601742986070443062840017289378"
//!           ],
//!           "caller": "0xB396814b49BB42564Ed82083CF0CcdbB1488cA5D"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "minus_ordinar_ordinar_plus_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-4975441334415930272106565762092058540570194653601742986070443062840017289377",
//!             "4975441334415930272106565762092058540570194653601742986070443062840017289378"
//!           ],
//!           "caller": "0x6404BC911fca759f07A664D10fF0a1204D660BDC"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_minus_ordinar_greater",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "7235459586150581064913783473102643589076950968712335714126511324781405536255",
//!             "-57505792273225172003577460839743825359377213102520121190104719553798906839039"
//!           ],
//!           "caller": "0x3b1004Ea2740a90439Ef632DdC43a9767Bfc658A"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "minus_ordinar_ordinar_greater",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-7235459586150581064913783473102643589076950968712335714126511324781405536255",
//!             "57505792273225172003577460839743825359377213102520121190104719553798906839039"
//!           ],
//!           "caller": "0x0b9AbEe25b4Cc5A2DFf16507A117D03B587a81fB"
//!         }
//!       ],
//!       "expected": [
//!         "0"
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
//!           "caller": "0xc9BB65950e3F84c5bE75FF3ED29e69Ed0Ba4beC6"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "minus_one_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-1",
//!             "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0xAE638939BD39627e7BcC762e3B8A03dC811A4B11"
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
//!             "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "-1"
//!           ],
//!           "caller": "0x5cFEa97fA3a828E0efC720B79fBFbc2320F25FA2"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "min_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0x8000000000000000000000000000000000000000000000000000000000000000",
//!             "1"
//!           ],
//!           "caller": "0xa04A2614777C1Fa48ff29D441E45aB2188D424B6"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_min",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "7437834752357434334343423343443375834785783474",
//!             "0x8000000000000000000000000000000000000000000000000000000000000000"
//!           ],
//!           "caller": "0x586395842A326A13679692A12fd3303cde337eAD"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "minus_ordinar_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-7437834752357434334343423343443375834785783474",
//!             "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0xdB7396a8E18aAe8EC56f4f80fefB6CAC3fD08561"
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
//!             "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "-23784273472384723848213821342323233223"
//!           ],
//!           "caller": "0x162a0bDFc66D6a3b97AFF32c05c2741691dFa00a"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "min_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0x8000000000000000000000000000000000000000000000000000000000000000",
//!             "23784273472384723848213821342323233223"
//!           ],
//!           "caller": "0x85f02518cAEc4261007c4aF1271261a28eec0a13"
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
//!             "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "0x8000000000000000000000000000000000000000000000000000000000000000"
//!           ],
//!           "caller": "0xA359131423DCd64EB97e257293dead1855DeCc2b"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "min_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0x8000000000000000000000000000000000000000000000000000000000000000",
//!             "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0xcc87318c5AA032a9889053775E090940cDc524C2"
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
    function main(int256 a, int256 b) external pure returns(uint256 result) {
        assembly {
            result := sgt(a, b)
        }
    }
}
