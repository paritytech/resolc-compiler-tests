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
//!           "caller": "0x938069Dc53c234FD339c05faaF9eD531aF67F232"
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
//!           "caller": "0x526cd3df9f697C5D3E0DE98ab3DeA3312EB6c939"
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
//!           "caller": "0x6aDFECFD9d63b5f0DEE9BEE830f9Bce84E402222"
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
//!           "caller": "0x673bC693C4c38ef4c339829e6Fd5838527d62233"
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
//!           "caller": "0x66f9918f58aC782E388593B3acfB666e27Dbb4C6"
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
//!           "caller": "0x98Da8Dd4a25A4139E563BA14289C779Dc8D5e601"
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
//!           "caller": "0x31E48123051C7b2Af8d857458354f03c325ca91F"
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
//!           "caller": "0x734A5Bc01c503f5e52901Bce02d76AC03df12134"
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
//!           "caller": "0xe8e669f79321D7f4cF90F4560026713Ec27eAd62"
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
//!           "caller": "0xa916C9107149505Ce5fd6E1Fb4FB1a19A2929916"
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
//!           "caller": "0x5B0eFdaaFA4777707e33c77B8b833DA9bdcF3Eca"
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
//!           "caller": "0x0270A813c9639Ff143D0519DA700E29cc53f93d1"
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
//!           "caller": "0xdc4aDc1F2C6eD113B2d5c14DfA1143E1fA277f08"
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
//!           "caller": "0xF264cAc6Da13c179DC629B8261220f2f59532C03"
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
//!           "caller": "0xF9a0325478c1291a74E0254bE556aE5ecC7ef68E"
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
//!           "caller": "0x040D4Ae209E3ee737c2f83Ed2E20f8D70D011584"
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
//!           "caller": "0xC21f2088Fb9f6BD56179B511bAF473fd379e3AC9"
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
//!           "caller": "0xF41C07e651269a544a2ee0bb07822ee9B1449C0E"
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
//!           "caller": "0x4B21d263bCDa02d18F7a3E4073F436CCccb60705"
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
//!           "caller": "0xC34521b56b47DEf0e45d517100b8CE22c8AC1f15"
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
//!           "caller": "0xe0B9f60d72855816e65AdAFa227B0CeA12477cDa"
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
//!           "caller": "0x59A1c9Abd9D52c24Ca530935E2e95bdF90628b46"
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
//!           "caller": "0xA393e7c958D585F259757e4439e8cA41D8363a03"
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
//!           "caller": "0x56143B6862B315DC07076c523b031d601c34cFe1"
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
//!           "caller": "0x9DBBf18fCE9Ea1bA002d6cF932b3a8C805F7dc33"
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
//!           "caller": "0x1366A182258e1Ab7a915CF96Aa1FAb41D9d78937"
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
//!           "caller": "0xC12298bcdD6c57C080C4a4a788DF3CA0C21d0bbB"
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
//!           "caller": "0xf78eF74A5719C2027A547B104c6C503b8B35f375"
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
//!           "caller": "0x3f9D1daCc3c9BFb4043E16b0a67eA0ce1c5B1F38"
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
//!           "caller": "0xB2194514edb025A5fc1f2B60C8Fa08eE896a0801"
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
//!           "caller": "0x46C8D8cF611A3F40d0A00e13495455a71fFCF386"
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
//!           "caller": "0x1789616322A354eD78ee7Fe4C637909569C6a0aF"
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
//!           "caller": "0x9c5f4a1103d2C535e53eA673929903b670907080"
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
//!           "caller": "0xbd068C58BC9AfE2596Fa3ef8A91c5315169Fe1bb"
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
//!           "caller": "0xB1b69b0481252329F71aB8Ed4692375AEBD85E01"
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
//!           "caller": "0xB1f425eBD614BBf5CFf4D5C31E30a7745f284eC3"
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
//!           "caller": "0x8c5F4a5652c663Ac6EaB64f9FF967Fe66136B819"
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
//!           "caller": "0xC4e889ba1568d7faE7347A182241dfcfdD44010E"
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
//!           "caller": "0x10D201ca1ddf3CCEc1336b55939C9DCEf70D865A"
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
//!           "caller": "0xEBe5B905Fe2D0Fb3Ab813Ca9c8Baa2ddEc9E56eA"
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
//!           "caller": "0xB7e832e0Bf4274ef6946CFFd665359A09ED23A4a"
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
//!           "caller": "0x6bfAfaFCb34a723909d96FF54aA132D1F097EbFF"
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
//!           "caller": "0x4DfE83E0aDfd400A335F2610a3F2e964E75a1c29"
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
//!           "caller": "0x3df90E348eafB9115A1031029ED492C704008c58"
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
//!           "caller": "0x22e5D0F715b28c6da055e2CDE359755d2d79229F"
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
//!           "caller": "0x5B3306d2Df4AD77EE82dE66BDA4fD7d083995846"
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
//!           "caller": "0xF82017d1feaD66fFD9C97c0F4f71C532c96Fc5c2"
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
//!           "caller": "0xC11914bFC7669820eF0c23C92C11B06C83390375"
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
//!           "caller": "0x512c5484e1c628CF6DA80406A0cd0Dd4B34d3387"
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
//!           "caller": "0xcD5DB0e470aCe1a891303A2bB979d5Cdf11EfD96"
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
//!           "caller": "0x06370359de1A708f8149d143FF817B1d390020e6"
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
//!           "caller": "0x3C543Fc79E392d8EbC4cB0443cD0401Be60fe4BF"
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
//!           "caller": "0xd40f35c34934222977De80AE33df9d3F7Ae9718d"
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
//!           "caller": "0xE036bF2Da9c5A7E6381d8ce2E2b1ca9Da1a3211d"
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
//!           "caller": "0x8F24874457aaDEEE631E07f04E375d0997E3F54C"
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
//!           "caller": "0x6b70f6a3604bB4DC9428a63A84067A1Fa604af92"
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
//!           "caller": "0x8d9706424F83dB06d6FDfcB940a75eDea031F349"
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
//!           "caller": "0x8C68944E857dabaBdD3d377b7eDD676B329c5Cb0"
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
//!           "caller": "0xAEd94D37A80e8610C5a5533880904420494e7b61"
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
//!           "caller": "0xEbE83F95F73633058401f5A922BBDF12B2468E4d"
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
//!           "caller": "0x7b9aD1E149B6C0FbE031cEFd3B1026B3f7887EEf"
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
//!           "caller": "0xdDB84a7e98d5b71206168D9f0A1f8feD5bE67092"
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
//!           "caller": "0x30338b351A7f1b1105FD59D63B26630d12EEe24a"
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
//!           "caller": "0x1EF4Fb2d705251c72a8c33818bD0453dC41323cc"
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
//!           "caller": "0xa7bC26ab62d22fDd6F29125D8DcF64C33F21AE99"
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
