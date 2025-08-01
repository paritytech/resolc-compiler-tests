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
//!           "caller": "0x620bF42019D2438652fFb015762d01e32C62B2E0"
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
//!           "caller": "0x425E605C8e1C0A786cc3f9f63018751842126b64"
//!         }
//!       ],
//!       "expected": [
//!         "1"
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
//!           "caller": "0xFb201ad019c3Ff5e8422011573cC8DE1f4B5C813"
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
//!           "caller": "0xe3b059E4ACc6baDff334128e5669275afA81555F"
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
//!           "caller": "0xb8c2b04A8B05215b0ca7C98f63B4AD655718ccC4"
//!         }
//!       ],
//!       "expected": [
//!         "1"
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
//!           "caller": "0xDF25d5e1404BB3F123708e4E2E97dF9222B7B1DA"
//!         }
//!       ],
//!       "expected": [
//!         "0"
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
//!           "caller": "0x4a2f7086171327D4B78845049Dcb613cf9e99683"
//!         }
//!       ],
//!       "expected": [
//!         "1"
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
//!           "caller": "0xBD611B9EeC4d0B8E4624F2f908A3C4155eAEb985"
//!         }
//!       ],
//!       "expected": [
//!         "0"
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
//!           "caller": "0xbc2f759274333b372305FFb7D94afF99870b7844"
//!         }
//!       ],
//!       "expected": [
//!         "0"
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
//!           "caller": "0xB4dd4fb044056E31E721AD098A490a3A954dbA84"
//!         }
//!       ],
//!       "expected": [
//!         "0"
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
//!           "caller": "0xeBa9062B8Db1dfEd2df5FF2F0Be14B04E538AfC2"
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
//!           "caller": "0xdc7159aDEcCA5f2E308fF387F343fC5B15487050"
//!         }
//!       ],
//!       "expected": [
//!         "1"
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
//!           "caller": "0x9058E29D086B924f1100B99e0c388508cbC536c3"
//!         }
//!       ],
//!       "expected": [
//!         "1"
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
//!           "caller": "0x790d8bD981AD1869103765FAEdcCd221aCe33E00"
//!         }
//!       ],
//!       "expected": [
//!         "1"
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
//!           "caller": "0x1124212120431D2632B297df134Bd783BACC6200"
//!         }
//!       ],
//!       "expected": [
//!         "0"
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
//!           "caller": "0x0a0CD094625d9ED35D5fe4B17adCe3DD5E9e8021"
//!         }
//!       ],
//!       "expected": [
//!         "1"
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
//!           "caller": "0x97881380CabC6327F479cE30d7688b5832c34f5a"
//!         }
//!       ],
//!       "expected": [
//!         "0"
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
//!           "caller": "0x74460726aC889490a43F31B0830159f338754643"
//!         }
//!       ],
//!       "expected": [
//!         "1"
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
//!           "caller": "0xa5c7a2708054B6fD827f7f5226f42c6609cc3B06"
//!         }
//!       ],
//!       "expected": [
//!         "0"
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
//!           "caller": "0x24267Fc6D8E2dffA56f86fD353BA0E7eF29C9310"
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
//!           "caller": "0xb946D8b96782b55557eBb9f041f3F5c707764E35"
//!         }
//!       ],
//!       "expected": [
//!         "0"
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
//!           "caller": "0xB6c49D958c74484D2F3Bd1C1E6586a6B70ff955F"
//!         }
//!       ],
//!       "expected": [
//!         "1"
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
//!           "caller": "0x14Bc831F30E4BB2c47515829968C4Cd5Ef8256E6"
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
//!           "caller": "0xfCea0517800e73841B66F0571B804deaD3531B93"
//!         }
//!       ],
//!       "expected": [
//!         "0"
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
//!           "caller": "0x7c20072451f99a60533a5bc5164bB57B3dB32df2"
//!         }
//!       ],
//!       "expected": [
//!         "1"
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
//!           "caller": "0x8A4E1F5793c4E8F061C30b6e8F58618023cB9742"
//!         }
//!       ],
//!       "expected": [
//!         "0"
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
//!           "caller": "0xeb069b37121b304db63E6DAb6f5dF4d7CA339108"
//!         }
//!       ],
//!       "expected": [
//!         "1"
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
//!           "caller": "0x8A5C9A355A0e351E3Eb83A1CEe2269d871F429e9"
//!         }
//!       ],
//!       "expected": [
//!         "1"
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
//!           "caller": "0x545a76Ad1898be2EfD90B5D3f3D241c19d4929e6"
//!         }
//!       ],
//!       "expected": [
//!         "1"
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
//!           "caller": "0xdfa2710454D8201E23a28013d63940E4C005b461"
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
//!           "caller": "0x87098E5DBD9b3BeE158638A241018d1C42307C90"
//!         }
//!       ],
//!       "expected": [
//!         "0"
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
//!           "caller": "0x7Ba14F1A1ECF92B0711dc950fD2D3779ba3D570b"
//!         }
//!       ],
//!       "expected": [
//!         "0"
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
//!           "caller": "0x09ee1B945a2b4E96770f03BB9fc56279428d9c67"
//!         }
//!       ],
//!       "expected": [
//!         "0"
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
//!           "caller": "0x6FA32800C411db2A2d9dfa7AbC8284559A15F945"
//!         }
//!       ],
//!       "expected": [
//!         "1"
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
//!           "caller": "0x8477f22155E425bADd49eC9c3edfAc9614C3E0a6"
//!         }
//!       ],
//!       "expected": [
//!         "0"
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
//!           "caller": "0x22A547dE5561894B838400807c88B5a684Ec7913"
//!         }
//!       ],
//!       "expected": [
//!         "1"
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
//!           "caller": "0x0eF6d0A7C0F46aa2c21Fb67d536D274532F235DB"
//!         }
//!       ],
//!       "expected": [
//!         "0"
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
//!           "caller": "0x02871dFFC2a30B8EEA84c4A8f98b3C9B64E219DD"
//!         }
//!       ],
//!       "expected": [
//!         "1"
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
//!           "caller": "0x35FeaD29Dda6cc66C0E7DBbf8D078E8ad2330D40"
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
//!           "caller": "0xF928084780786394987Eda41fA44cF41C99F9118"
//!         }
//!       ],
//!       "expected": [
//!         "0"
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
//!           "caller": "0xa819B93D288d6aa14634F51BbceBDe5bd5ad41df"
//!         }
//!       ],
//!       "expected": [
//!         "1"
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
//!           "caller": "0xCD277de1711A95da46dBa43102a62cA513886f3F"
//!         }
//!       ],
//!       "expected": [
//!         "0"
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
//!           "caller": "0x2fACE249Ec68CdFF5e532e98f8BCF2D1a1d8b770"
//!         }
//!       ],
//!       "expected": [
//!         "1"
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
//!           "caller": "0x97dEF6Fbd5B6586DB323027Fa755bE7D788d642A"
//!         }
//!       ],
//!       "expected": [
//!         "0"
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
//!           "caller": "0x26860ee012fd1C172b823bb8747398DdEc22F65a"
//!         }
//!       ],
//!       "expected": [
//!         "1"
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
//!           "caller": "0xDa93264857dc092B386eAC80a2A472C09542F2A7"
//!         }
//!       ],
//!       "expected": [
//!         "0"
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
//!           "caller": "0xeD593D0dA1121B395a26E6Cff970CA108facC92B"
//!         }
//!       ],
//!       "expected": [
//!         "1"
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
//!           "caller": "0xbB658F72C38E450D48cD8686631f43a057f6fb57"
//!         }
//!       ],
//!       "expected": [
//!         "0"
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
//!           "caller": "0x0bC344176dFFB0E71D316C749E06184Dbb2D0cDa"
//!         }
//!       ],
//!       "expected": [
//!         "1"
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
//!           "caller": "0x73cEd187f1dBFbEe9b23DBBf8eD1e7e6B4f66Bff"
//!         }
//!       ],
//!       "expected": [
//!         "0"
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
//!           "caller": "0x5D1c081681198b18993c2282dF50ED2Cab6B36FC"
//!         }
//!       ],
//!       "expected": [
//!         "1"
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
//!           "caller": "0x8baECf46359C460d65e5792893c91451C1c5d944"
//!         }
//!       ],
//!       "expected": [
//!         "0"
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
//!           "caller": "0x647033d68b0c5BdAF323ebE7F9b06B959679c292"
//!         }
//!       ],
//!       "expected": [
//!         "1"
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
//!           "caller": "0x74fF662A04eE754bd1C55cb669f32c2A96aeE503"
//!         }
//!       ],
//!       "expected": [
//!         "0"
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
//!           "caller": "0x567DA04D0A02bD4594E26F1b94DEab62F8453839"
//!         }
//!       ],
//!       "expected": [
//!         "1"
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
//!           "caller": "0xbfd9D36B6A5a8f51Adf65Fb1d2E72b21aDD8C1F0"
//!         }
//!       ],
//!       "expected": [
//!         "0"
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
//!           "caller": "0xf79C69948D223c178E7148bc646619eEAAbdCDdb"
//!         }
//!       ],
//!       "expected": [
//!         "1"
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
//!           "caller": "0x9A374318154B400dad3Ae35462718460d1E38bF0"
//!         }
//!       ],
//!       "expected": [
//!         "0"
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
//!           "caller": "0xaf3dD9126839166af2e7dfAE3955431270bE8BB5"
//!         }
//!       ],
//!       "expected": [
//!         "1"
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
//!           "caller": "0x1e404fDeb02eFF25766e9c04dee493b0E7E19436"
//!         }
//!       ],
//!       "expected": [
//!         "0"
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
//!           "caller": "0xA10290D71c21d3Ef88804Ff4Af3FE9e17eDe328D"
//!         }
//!       ],
//!       "expected": [
//!         "1"
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
//!           "caller": "0x96225c1966c1C59D1cFebFD1C6e0471bECFE7ac4"
//!         }
//!       ],
//!       "expected": [
//!         "0"
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
//!           "caller": "0xCDeE4B99fCB57C1c97C59fe062A9BDA51de12153"
//!         }
//!       ],
//!       "expected": [
//!         "1"
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
//!           "caller": "0xE44Ddd8ECD814A05756547970D1A06995D51e397"
//!         }
//!       ],
//!       "expected": [
//!         "0"
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
//!           "caller": "0x6D462cB0F6B963d09556441FE6A727C8B23C0f0D"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(int256 a, int256 b) external pure returns(uint256 result) {
        assembly {
            result := slt(a, b)
        }
    }
}
