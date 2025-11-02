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
//!           "caller": "0x573b433832aef8dd4239b444c5d216b550275001"
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
//!           "caller": "0xb3d5270ea26b752f65f76efcd307bd0e0470f1f8"
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
//!           "caller": "0x7dcc75ec46a619f5f182166cf79c0b1e2b37e942"
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
//!           "caller": "0x3de305c9f1bd4f076b4e793b74e48aa5e095ab00"
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
//!           "caller": "0x09dcbbc875937081419c13f04ed1227ae9762582"
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
//!           "caller": "0x4d27060052d55533ded79e41b67c8268ee163b1c"
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
//!           "caller": "0x0659d64cdce705c65452ab8fdce2647a81bd645d"
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
//!           "caller": "0xe2d0ab1cd88c4a0399ad32b59d1dafbe2f4c1fb0"
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
//!           "caller": "0xa626e42fd96a4a8c30fb5d7b125cb387df7cb9d4"
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
//!           "caller": "0x9a683b6550afd97c9e5a2aed42ba116cf51b8273"
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
//!           "caller": "0xad199a7d29521c0b77ee30b65f5cb7b748ea65a6"
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
//!           "caller": "0xd1ea542ab0cafac2ee9dff4a6692f6c25b41a7f8"
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
//!           "caller": "0x389fc2921a293f85b3a8b01c4033b5ade1753945"
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
//!           "caller": "0x27fdc1e7845421f6708e8cf89e085ca593c82069"
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
//!           "caller": "0x94b5011eafab3586a097fef586ddf74b5066dac5"
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
//!           "caller": "0x60a9f831dcaa0e8d6acc02e27a308afac9d36ec4"
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
//!           "caller": "0x7e9908e5739bf0aefde891d3a80531fd905b5340"
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
//!           "caller": "0x277961df599cefc9481d13b9f9364a977cecfe88"
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
//!           "caller": "0x6b9b09d5bbdf57ebe7da3fe5476ec4eaa3e4f08c"
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
//!           "caller": "0xc877170a0f8bf060eda8bdfad977ddf160b78101"
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
//!           "caller": "0xa8e901ad10bdaf79740a9287da0cce235aa52071"
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
//!           "caller": "0xc62b09d8b0921169e3cb56f5ebbf44cee6692261"
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
//!           "caller": "0xba4c2c77e7294ee9b9518622199fba67c49b3a6a"
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
//!           "caller": "0x5860a72a704f483134e4067f8058f095ee8606e6"
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
//!           "caller": "0xc0d6debc597e7b7ab8bd2d47e2c90ce00f1acecc"
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
//!           "caller": "0x29159d838ab7628af4b172ecac768e79ff41a1dd"
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
//!           "caller": "0xd79345c829e0c6ea1d006f5d4ecdea9f7de9e9a4"
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
//!           "caller": "0xc473268aee37fa12e37c7a7f5f4bc062a9197eee"
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
//!           "caller": "0xbe1a9077f14dfc23cb03d05c18fd9bc7ac38ecfc"
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
//!           "caller": "0xc275d3e1ccce388a7a6ae9268defedfd3c9a1ce8"
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
//!           "caller": "0x53580af257de4317f58d8f3e9341b85222a3a95f"
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
//!           "caller": "0x571a5bc902287a16e434722f39aba021fa6dcb7a"
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
//!           "caller": "0x3000b0edd96bfdda2cea6d08c00ad58850726332"
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
//!           "caller": "0x0746e6f100ff4ebe49f5c886ca2294ec8308326a"
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
//!           "caller": "0xb5da06614dc3036ba8969c499879fb22f32b4ea1"
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
//!           "caller": "0x9f2953fb5c8e33109cfeb4feb0494214f2414aed"
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
//!           "caller": "0xce499dd95284f94495956afd841a9153356c1531"
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
//!           "caller": "0x4c6f713293b9368fe45c3d10c6f6a7dc0aa11c44"
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
//!           "caller": "0x002a783a493a56909d5aba958f88c018441b6375"
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
//!           "caller": "0x19b76b63b04eed5cdf2b9861cb01f27b2dab086a"
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
//!           "caller": "0x185821174e972911761b12502f52d3cbd7abdd4d"
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
//!           "caller": "0x1818e5d558039f2074bd14ac8acd96b13b8e799d"
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
//!           "caller": "0x8d6a49ef01c8207cf0dc7e836a106e7ef9be043e"
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
//!           "caller": "0xac440effe3bc4bf6eab6c251a963d09faefcdcc8"
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
//!           "caller": "0xc963ac51827b3f8b494b2326e83ad31fba10b1ab"
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
//!           "caller": "0x52ca672926acdd37560d8028c0f74bff46aa666a"
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
//!           "caller": "0x3ec3197786b763c034ffde9762629d9105f6e143"
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
//!           "caller": "0x6732218c90fa3362c0e559f3716a5e557d904b98"
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
//!           "caller": "0xbb358e8816256ad095bf0298d51f91d86935b6a0"
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
//!           "caller": "0xfde0896833a15589c83bb18a4b2ae4469944cf1d"
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
//!           "caller": "0xce2ea901ecc6f876bada09e4a7a65c57e9ff9836"
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
//!           "caller": "0xa36fb7d9eccd7a1f41a2f45d53ce1f6576b3dce3"
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
//!           "caller": "0x87ad49779afa72c134bb24b9414fab413b1b11aa"
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
//!           "caller": "0x1d1b45c77a2421fdbdbefff52db090c8524ab0b7"
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
//!           "caller": "0xa2683bed9d7a0a53b2065693d407428adf1b1716"
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
//!           "caller": "0xdccf2fefe47b4f8d0d3a09f7c743077750108d81"
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
//!           "caller": "0xe0bfe7b6bf904f1aaacc0b0f05b302ed7e36f000"
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
//!           "caller": "0xb003898c7b28f44e90717bde457ce65c4c7de2f5"
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
//!           "caller": "0x47ccdd8a1b33bbf3b0ad06587d6d2715b75e94a1"
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
//!           "caller": "0x5d9d3816e6e3b9e74f5a3b82b10658f122758a6a"
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
//!           "caller": "0xc9e7de54a2c21b2e87f61a7f644fb6e94d0f8840"
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
//!           "caller": "0xb47867695726b5193bd742c5f47ef833e751a2b8"
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
//!           "caller": "0x4829ad2534ecec0b700b7a478eae9b7158b95b59"
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
