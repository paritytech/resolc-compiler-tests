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
//!           "caller": "0x39bdf9d79560028fc073c072e0ee09112e5f919b"
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
//!           "caller": "0x1ff8d1cd6caffd14452adefc0a91640a1a80b47b"
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
//!           "caller": "0x22493f04be9ace0cdb94ac81911e720d3fcad567"
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
//!           "caller": "0x2ac679b95327fd4059e18d234ba2a8b5f8c6229d"
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
//!           "caller": "0x643e1bebb5332e93766c3ed00940e93db50aba83"
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
//!           "caller": "0xe50b86773270741aeecdaa97005031d0b7684d7b"
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
//!           "caller": "0x6e5d9cab97705a5b90103a03493c939ae927e4b5"
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
//!           "caller": "0x705e65839f9773cd9a1007b66dac60110b7a7524"
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
//!           "caller": "0x5988fe02582b435ea82d1f5f658a1f9a15b182dd"
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
//!           "caller": "0x8e47c4986f8fa7294f326820b04d6d779c5810fa"
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
//!           "caller": "0x7554c440783a60615bfb68ee4f82fb97d1d45bdb"
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
//!           "caller": "0xab5639d06073a22d9911d1bd1bd96a6cbd9158eb"
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
//!           "caller": "0xa3b6f72f307bc5d4e8a156eccaf077c802e0ba35"
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
//!           "caller": "0xd6ad18a7bb606192e33d870f204060ff617e446a"
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
//!           "caller": "0x3f154911be52d918c0a2458fcc3721545d551226"
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
//!           "caller": "0x9ea4906055e0cce16e04e47cdfc0ebe3e5b779f3"
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
//!           "caller": "0xea117c81f905709a1cf64e03b280edc39cdc9a3a"
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
//!           "caller": "0x28d8b9b90b0a5e7f42e5afcb492a1166d15010b2"
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
//!           "caller": "0x4979b316c9b1d8b6d6a3c89427bc74b9425ffa8f"
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
//!           "caller": "0x022600d82f5972d1b87d624b2d0f54ba2d0a528d"
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
//!           "caller": "0x7757ffc2c71dcf5dd485702466ecbc2678c6c771"
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
//!           "caller": "0x90ac9a7d98a9adc189421d5c50d39b9f6fa7fa1e"
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
//!           "caller": "0x834c26cf6ec36f5112e5f5b86e768b28607ab8fe"
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
//!           "caller": "0x2e42469e2c2bc32007be0e95d37784fed835581e"
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
//!           "caller": "0x16bf7286b6695e9c5bb10d7c04d0ea7db20ca8c0"
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
//!           "caller": "0x97014fe5fe61bb2db891859265cf5e608f90f92a"
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
//!           "caller": "0x41944d727d1e08ad1af900d271593069fa46385b"
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
//!           "caller": "0x38e58e0c8eb2cb347a8ff21147ad84d4d5851f38"
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
//!           "caller": "0x3440b892075faf7e968bffe6e22c2d5b472011a4"
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
//!           "caller": "0xd78b462dfa78c95c701e67a2d5485326e35d6592"
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
//!           "caller": "0xaaa0844a51f70bf06f5a19bc68b2fa1f4934705e"
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
//!           "caller": "0x52d20770485da0843487b5200f7ab37368a43f35"
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
//!           "caller": "0xfc6f94197d742d5b2a226348b0ff5edf647436ba"
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
//!           "caller": "0x2b6e90e0628e74465d9ffcfbd08d7d97d765df34"
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
//!           "caller": "0x0ff9e49bfaa748a36df6a7edfa83309abeb19b70"
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
//!           "caller": "0x1b5de3702b91265f46e68f582be1908fb558d79b"
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
//!           "caller": "0x7af4f5b97791c02cad42c5033973d48473c46ec0"
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
//!           "caller": "0x5e03587a1a78a7df691c310ea9e67b0496200821"
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
//!           "caller": "0x4e9fd941eef631ddda6449243069a60601e150a8"
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
//!           "caller": "0x5b8ecfea2193148f2aea0034536a188269f2f113"
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
//!           "caller": "0x266356dc540aef4eb8df8f2e7e4e920cbe979449"
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
//!           "caller": "0x3404e27d293fc8e08ab26580b5969aba98d4a674"
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
//!           "caller": "0xc03aa634789f7d551210813894dc53391ecfbe6a"
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
//!           "caller": "0x4d36451ad01a6fccb694b9829f4079658219513d"
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
//!           "caller": "0x240c5392323cf224c9663a85e0363f2c74c56401"
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
//!           "caller": "0x1b1cd7e4dc657051fadf9d369fb4098be65a1c3b"
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
//!           "caller": "0x31b0b41cd0a732a3c0bd0339bf027a8f538ad42b"
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
//!           "caller": "0xe92ca5e30ddfd5f19abbd80a2e0140346618689e"
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
//!           "caller": "0x4d20591cd3729830a39d2eb7602211b087675a06"
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
//!           "caller": "0xdd2a3a3469edccac1d1c2ba097f3917dcf0c84fb"
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
//!           "caller": "0x11e2dd5428ffca3c6e0174aa293d821c2c28c445"
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
//!           "caller": "0x1438abcaa6e6faeed2e2d22da7f73b948b3ee0ca"
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
//!           "caller": "0x3e7853e6c2c35d3ffe66817a28f1ad40ca6399c7"
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
//!           "caller": "0xb00994ba458fdd8c17745f6c40e7cae498331782"
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
//!           "caller": "0x1bfed4fd32ed0c39f84a40109a18b5c94a62c5da"
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
//!           "caller": "0xa1bed96016d2e70b92a7e1b5dec1f517f1ee01ae"
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
//!           "caller": "0x459a573606aa263e3ef360430e392329372e07c8"
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
//!           "caller": "0xd3562fd10840f6ba56112927f7996b7c16edfcc1"
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
//!           "caller": "0x3cd2e74ecc2ef5cbdd989decc9158fb9cc349616"
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
//!           "caller": "0x9dd82bb2ce01e5fcde59808070e8064bf043082c"
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
//!           "caller": "0x1f51f66fdf659da359cfdc351099dc98fa3826f2"
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
//!           "caller": "0xc094d0c013884cd6908d4e35c8b8c039ea86d0ff"
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
//!           "caller": "0x730a8113b9e2333199a7afa78f1e4c6be11f8fd9"
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
//!           "caller": "0xbf317644d4c4d009ed0e516c7a7db2f2717990bd"
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
//!           "caller": "0x9d8133fa4e4af2c99a3cc04630919bb24f3a570c"
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
