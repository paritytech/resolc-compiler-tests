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
;!           "caller": "0xc8e8819390D25D7526c4b18ce5b787aA7796AdE6"
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
;!           "caller": "0x961D2B89cA50d8Fbb08a10246e163441D5D728cB"
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
;!           "caller": "0x4aB272701bC10D75b61A67704a1a291D451300FA"
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
;!           "caller": "0x132b9138b63f87bF7D7aC6c4bc0caACE47bfB822"
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
;!           "caller": "0x2C2B8d4Fc9E272CF925e1e6baFDFBdEBDefB744e"
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
;!           "caller": "0x3A98c0434fe26Bf2db3a65D2465e127E93c66982"
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
;!           "caller": "0x2E6729E19a482C75B342856D61945f300e0C2f41"
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
;!           "caller": "0x5cf73A11004d5Fd85c98519176D2D74ABB78261E"
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
;!           "caller": "0x3fE68790e9e3e28b34666c32f84fDAab5C0D54D2"
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
;!           "caller": "0x87d6510B102b7FE46839AA0c8fA1e3B7dA37f02F"
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
;!           "caller": "0xdAd547B7DC8B515B4594E9026Cc60eBcEECc19e0"
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
;!           "caller": "0x88FEf60E16f66e476DeA36acAb0437f513f7baA1"
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
;!           "caller": "0xCF73441fFe8F835395275ba7cCdc598a63438FB8"
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
;!           "caller": "0x7B6c8029e8B27C6060C4385bC468a087545F85B6"
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
;!           "caller": "0xCc19925b3561e533bb735Bf29D910c7886D97Af0"
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
;!           "caller": "0x71d864d67ddBeF656c376D51F1004f15fbbFfB2e"
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
;!           "caller": "0x209F5B013650704b71Ab62B7c0C6436bE7D1962B"
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
;!           "caller": "0x9d01fD5ffa13A6fDf1E97e5cD5f267C84584F813"
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
;!           "caller": "0xB060CD0c87a45E11BceB4e1f7137C75C0C9a29C5"
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
;!           "caller": "0xbA24211696F2A15eB27Ee1Ed1C3C293aF7347250"
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
;!           "caller": "0x48b618E84efc1144908B74d85771DDAc24BB7eaD"
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
;!           "caller": "0x19627C687f7e1825cC7ee3be486C0513C9c754F6"
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
;!           "caller": "0x76aB74321F70b814E359796A51a3869fF18c493c"
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
;!           "caller": "0x4c6c2b881c2F608C4496420a7252B37334A9093b"
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
;!           "caller": "0x0Cb3599e1e9e3d6d40bD8258d64Fde77e6a323E7"
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
;!           "caller": "0xc66B84930B78F538CdCB2E86af5817fb2b7AC219"
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
;!           "caller": "0x45211D4380530Ea30A7831bd3Ef5b0C317d7CF5A"
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
;!           "caller": "0xfcDC7E959d5b881F91a067a0c49B103CF750B257"
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
;!           "caller": "0xB09a521C7eE9eCc598dC215B8EE4521A93457bD3"
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
;!           "caller": "0xDb7C9712E1B3387d9F66cbC3E1a0F70aa6FFf601"
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
;!           "caller": "0x4d2D254a10693FECF090ac47f826e0d728cdaE6c"
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
;!           "caller": "0x8a6B192bF5e99368CB04c577eD7A54bB43e1736B"
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
;!           "caller": "0x884066111731f064474F77B3553430962186e99f"
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
;!           "caller": "0x52b7BcF6348Dac89c662ACF1b157d7bB96De64C2"
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
;!           "caller": "0x11c3aeB56BA112E333673A8d0C63e830824C1420"
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
;!           "caller": "0x71Be6af8fED405d9Adb913BC777fed08bEeda1AB"
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
;!           "caller": "0x588b003F1Bcc2241153cDD65Ea25DBDBA7166f43"
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
;!           "caller": "0x2d25849A4a26898AEB6Ba0FDDb043fB1D385156f"
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
;!           "caller": "0x81f407Af4097C4f0C32bA67A076A6322070C1D4F"
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
;!           "caller": "0x1b1E9D21B95A8fe9a346db2c37a4c4c705f563EC"
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
;!           "caller": "0x3a83C39c66eC1107c03b495F4830E068FB986b9E"
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
;!           "caller": "0x07c2f3c9C3ddC02a5a7b17670e8864Ca1fb359Cd"
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
;!           "caller": "0x7f57a845c2dF7f9a684343916a37f64Ed25A9A5D"
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
;!           "caller": "0xe3D0EbA78B623a27d319d0E71d50A3a007040Ca4"
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
;!           "caller": "0x65BBE840F7BF27571684b593302DBc5069F72386"
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
;!           "caller": "0xcd667C019bD7fB96eCf07de027dD41070dc7b4B9"
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
;!           "caller": "0x66Ba654c42A9d9AB87668C4e963ab2Df7404cf9A"
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
;!           "caller": "0x919608Cdc0CA074D2fDcfa698dd08c0d3074BEE0"
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
;!           "caller": "0xd9a269b48723BAc500244c41EE1c2cb56246aA7d"
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
;!           "caller": "0xd2B8c7f8FdA30D984db44faa4d7EBF5C04c811BF"
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
;!           "caller": "0x4E655FAdEa3467f8363E7F8adF965671A749E32A"
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
;!           "caller": "0x2A8Fe1F889B5F1051EfD26412338B186A7Db77a5"
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
;!           "caller": "0xDD0115FDDB172CCa90a733efbaBBeD439e774a04"
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
;!           "caller": "0xbF39f86A84f9dd9494F2D5a5edeBA8e6818B7103"
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
;!           "caller": "0x4541daB34f5425De1c79EFbe1D923C637C8B59b2"
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
;!           "caller": "0x720BA089aCF9F2C88454244182BFAAEe7dD1FD50"
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
;!           "caller": "0x0e24E70798478eC0EfD1D8ac74cFCe1aC46A0263"
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
;!           "caller": "0x9238ffb690680dd816294b8d6c12E477F8B401bD"
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
;!           "caller": "0x7f46A0a7c2023Eb50b2939AF8CF7EEB26238C4c4"
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
;!           "caller": "0xe6A2DF57BBD38cd07f441C7EB144E43f63503A95"
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
;!           "caller": "0x4210d3eB50C319c6C05D93e2f5163F2220e7c94C"
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
;!           "caller": "0xA5107464E8590e508cE3Aa83611c8BE3D44C6db1"
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
;!           "caller": "0xEd88f12BeA2c4E5E28a177319f61141005bb17f9"
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
;!           "caller": "0x272836b79734ba760925C6F31c8DF0cB0D094BBd"
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
;!           "caller": "0x6B862119a6f197be5f68Cd3899DFdab723bAa8f0"
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
;!           "caller": "0x15eFc094A48C344ca785c20BccB4E2af6174D3cE"
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
;!           "caller": "0xaa17ef41C22352F22BF4F27341fa80fDE6Ecc984"
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
;!           "caller": "0x463BF08e6cDE1183C2C9Fc7Ae73D83C3707c09B5"
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
;!           "caller": "0xde5f74dA00c270F20cF978FB0686e5be66430C07"
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
  %res = call i256 @__smod(i256 noundef %arg1, i256 noundef %arg2)
  store i256 %res, ptr addrspace(1) null, align 4
  call void @llvm.evm.return(ptr addrspace(1) null, i256 32)
  unreachable
}

declare i256 @__smod(i256 %arg1, i256 %arg2) #0
declare void @llvm.evm.return(ptr addrspace(1), i256)
declare i256 @llvm.evm.calldataload(ptr addrspace(2))

attributes #0 = { alwaysinline mustprogress nofree norecurse nosync nounwind readnone willreturn }
