//! {
//!   "targets": [
//!     "eravm"
//!   ],
//!   "cases": [
//!     {
//!       "name": "zero_zero",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0",
//!             "0"
//!           ],
//!           "caller": "0x292ec78f48d0c61e78c1d1de1ffdc989c2d797c1"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "zero_one",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0",
//!             "1"
//!           ],
//!           "caller": "0xc39bd97311a2a0ea8482a75ef587c26055ddbd25"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "zero_small_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0",
//!             "19"
//!           ],
//!           "caller": "0x6fe0de4ab792564ce021ca3e4af3725244ef59d2"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "zero_word",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0",
//!             "32"
//!           ],
//!           "caller": "0x3e8cd705cbc26e3a61611330ed854b3fc9305d10"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "zero_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0",
//!             "2383"
//!           ],
//!           "caller": "0xd5f1ed82345d92bfc9d6a4029486d122aa7d3f44"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "zero_ordinar_words",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0",
//!             "0xF100"
//!           ],
//!           "caller": "0x4e624b518a103abc078f98414d5c0d4e7411edea"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "zero_big_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0",
//!             "0xFFFFFFAA"
//!           ],
//!           "caller": "0xc3d23984d88f15013e5205d1ef0c9e4af4c3047e"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "zero_2_in_32_minus_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0",
//!             "0xFFFFFFE0"
//!           ],
//!           "caller": "0x9f39fe0d693a571ac365c7f487e6c9027660f6b4"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "zero_2_in_32_minus_31",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0",
//!             "0xFFFFFFE1"
//!           ],
//!           "caller": "0x3361e4092fd3dc086581cc6043118fbad5ce9680"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "zero_2_in_32_minus_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0",
//!             "0xFFFFFFEF"
//!           ],
//!           "caller": "0xeb21189fe47ed2feccea570f7b39938e5e8d184f"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "zero_2_in_32_minus_one",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0",
//!             "0xFFFFFFFF"
//!           ],
//!           "caller": "0x83c552b9725f36a8d8bd7ecd5292c53844f3deac"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "zero_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0",
//!             "0x100000000"
//!           ],
//!           "caller": "0xae5c3d1bcfb2781e0d5517e42f54dc6f23be8f8b"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "zero_ordinar_bigger_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0",
//!             "3334353453452342342354355544445321191012012"
//!           ],
//!           "caller": "0x77012af4e73a4f02692a2f10fde6177402f371ba"
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
//!           "method": "test",
//!           "calldata": [
//!             "0",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0x9b1cc438b76dad94f48224ecf1cd6db877d2b089"
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
//!           "method": "test",
//!           "calldata": [
//!             "1",
//!             "0"
//!           ],
//!           "caller": "0xbc02e365a53e1ee15f077a3ce1f923ca31ed97ef"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "one_one",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "1",
//!             "1"
//!           ],
//!           "caller": "0x1b473e25f1dc7ed0c227cf92841b105a40892230"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "one_small_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "1",
//!             "19"
//!           ],
//!           "caller": "0xe72cfab7e5679185b06397f3e06640d44a1baf5f"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "one_word",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "1",
//!             "32"
//!           ],
//!           "caller": "0xb29f114f5ef243af4cbf6942030d2b702fe3c1d3"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "one_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "1",
//!             "2383"
//!           ],
//!           "caller": "0x96c39a4da8973e27381d05faa2fe0cbe52064dde"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "one_ordinar_words",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "1",
//!             "0xF100"
//!           ],
//!           "caller": "0x66c37510807e60e89a0bb225215c667ca6ccd910"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "one_big_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "1",
//!             "0xFFFFFFAA"
//!           ],
//!           "caller": "0xfddc3b1aeb635a72125198f20c49733244dab0da"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "one_2_in_32_minus_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "1",
//!             "0xFFFFFFE0"
//!           ],
//!           "caller": "0xc79b816b156876df2a1b442690e5acf5eb3ce5b6"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "one_2_in_32_minus_31",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "1",
//!             "0xFFFFFFE1"
//!           ],
//!           "caller": "0xb979036d3a52f9ecb107374bd7c9c51ad009f988"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "one_2_in_32_minus_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "1",
//!             "0xFFFFFFEF"
//!           ],
//!           "caller": "0x7f88a105add61d44cf248bd9913f85a099615362"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "one_2_in_32_minus_one",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "1",
//!             "0xFFFFFFFF"
//!           ],
//!           "caller": "0xef9928d6e2126e0a936be30115ca8f4fe415596e"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "one_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "1",
//!             "0x100000000"
//!           ],
//!           "caller": "0xda5646520c1709dd40d29e26893ece554d718664"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "one_ordinar_bigger_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "1",
//!             "3334353453452342342354355544445321191012012"
//!           ],
//!           "caller": "0x7b81f9017e538f464ce24d40c46e7681935a9861"
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
//!           "method": "test",
//!           "calldata": [
//!             "1",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0x5f4363ff1aa4d20a5075d2a72f8165110f133a07"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "small_ordinar_zero",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "8",
//!             "0"
//!           ],
//!           "caller": "0x59f42d34fc8b4688a7cf241645fd52599bda0635"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "small_ordinar_one",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "8",
//!             "1"
//!           ],
//!           "caller": "0x21ebeb9f176a184dabcb617a1376adfa10673556"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "small_ordinar_small_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "8",
//!             "19"
//!           ],
//!           "caller": "0x3d44fdf136dced6a5179df305f0ad6422dba7edc"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "small_ordinar_word",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "8",
//!             "32"
//!           ],
//!           "caller": "0xc10b9b00a50b66a2b7b6bce3cc1e2e78d18896af"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "small_ordinar_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "8",
//!             "2383"
//!           ],
//!           "caller": "0x80c1838c701c8d2f26a043be785ceb50984ebca2"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "small_ordinar_ordinar_words",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "8",
//!             "0xF100"
//!           ],
//!           "caller": "0xec35c61310204e4f0f5acfaca2a7d07b1c7a61b2"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "small_ordinar_big_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "8",
//!             "0xFFFFFFAA"
//!           ],
//!           "caller": "0x7ecf59bb199f9e3da99f0ee6d8b97112415a8f12"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "small_ordinar_2_in_32_minus_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "8",
//!             "0xFFFFFFE0"
//!           ],
//!           "caller": "0x1ba8f28cb129ed813fd553fce3d43229eaa21baa"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "small_ordinar_2_in_32_minus_31",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "8",
//!             "0xFFFFFFE1"
//!           ],
//!           "caller": "0x035ee2ce524b424821e335a8578680e541f3c7b3"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "small_ordinar_2_in_32_minus_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "8",
//!             "0xFFFFFFEF"
//!           ],
//!           "caller": "0x59e19a9915c3e521f2fd40251564c1d34d6eeaff"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "small_ordinar_2_in_32_minus_one",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "8",
//!             "0xFFFFFFFF"
//!           ],
//!           "caller": "0x92971e1926b4d4a122ae121342cde4c8faf14905"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "small_ordinar_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "8",
//!             "0x100000000"
//!           ],
//!           "caller": "0x49ae3e767ac42af5284fdb5db8022902a7a991e3"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "small_ordinar_ordinar_bigger_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "8",
//!             "3334353453452342342354355544445321191012012"
//!           ],
//!           "caller": "0x746af372b494b141b0b5b923ad8d3f46f776c288"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "small_ordinar_max",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "8",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0x3a0b7d9a5bba93befecf077b708d8b879a787c83"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "word_zero",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "32",
//!             "0"
//!           ],
//!           "caller": "0x3a70762ffec8ff92a485119b74383d5a4c1d01be"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "word_one",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "32",
//!             "1"
//!           ],
//!           "caller": "0x3f135fbbbd2c2e4c70881ffa3f93ede3cea05d13"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "word_small_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "32",
//!             "19"
//!           ],
//!           "caller": "0x98d031dec3f76d2281ee4bf8b85108d3337c7089"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "word_word",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "32",
//!             "32"
//!           ],
//!           "caller": "0x3cfa2460a82fb792e3bb7ecfe4d16d87226ebef9"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "word_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "32",
//!             "2383"
//!           ],
//!           "caller": "0xc95931ccb323afef1d89e4e36ee53764ee1f9b94"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "word_ordinar_words",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "32",
//!             "0xF100"
//!           ],
//!           "caller": "0x5b25be57cbb60aa863681e700d955db6437b906b"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "word_big_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "32",
//!             "0xFFFFFFAA"
//!           ],
//!           "caller": "0xa64dc18b74b8e989b2c04a25d85b96946e9ad601"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "word_2_in_32_minus_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "32",
//!             "0xFFFFFFE0"
//!           ],
//!           "caller": "0xcbafef3921745e61c4bc148bd2f45ea1c0715814"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "word_2_in_32_minus_31",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "32",
//!             "0xFFFFFFE1"
//!           ],
//!           "caller": "0x5f42dcc26115b7d07afb96125e875617c8f7e37b"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "word_2_in_32_minus_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "32",
//!             "0xFFFFFFEF"
//!           ],
//!           "caller": "0x87312b6f2515642dba8a097ea414bd3c709b24c9"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "word_2_in_32_minus_one",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "32",
//!             "0xFFFFFFFF"
//!           ],
//!           "caller": "0xb59663b32071d7d254f96c6f8a8467ef49311289"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "word_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "32",
//!             "0x100000000"
//!           ],
//!           "caller": "0xbd0fd97774238e4d00c768e5827363bf483b8f8b"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "word_ordinar_bigger_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "32",
//!             "3334353453452342342354355544445321191012012"
//!           ],
//!           "caller": "0x30558fb66e206c53a7a1d028380559b20a5f8a4a"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "word_max",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "32",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0x9b91d9c1f67584a5be18e1024883d1e28f8e2d0e"
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
//!           "method": "test",
//!           "calldata": [
//!             "421587",
//!             "0"
//!           ],
//!           "caller": "0xb29ac5291df9174fcf220e55621eac5446b8fa08"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_one",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "421587",
//!             "1"
//!           ],
//!           "caller": "0xfb8e921d89c8e1b93ae498b83921395a3ab137fd"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_small_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "421587",
//!             "19"
//!           ],
//!           "caller": "0xccc09bca800c1438dc6b2c8f2d24b98f554e292f"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_word",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "421587",
//!             "32"
//!           ],
//!           "caller": "0x1386feecf0577f574f505a4c231f6ae8269c667d"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "421587",
//!             "2383"
//!           ],
//!           "caller": "0xa7a49a1dc253c2337c74bd19cf57af88fb70da2a"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_words",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "421587",
//!             "0xF100"
//!           ],
//!           "caller": "0x8ebe19a6bfdda21068e163e73fbae80d93969f7c"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_big_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "421587",
//!             "0xFFFFFFAA"
//!           ],
//!           "caller": "0x9f0f6089e9dfd3029b17f00f70c30fd34b6f244e"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_2_in_32_minus_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "421587",
//!             "0xFFFFFFE0"
//!           ],
//!           "caller": "0x64b8762f493178366db14c067bf74d6943d7d436"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_2_in_32_minus_31",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "421587",
//!             "0xFFFFFFE1"
//!           ],
//!           "caller": "0x3587e4be1d0c0800772ceec64a788a4be2b5fc5c"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_2_in_32_minus_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "421587",
//!             "0xFFFFFFEF"
//!           ],
//!           "caller": "0xd15a50df0d1d54b0931f462fda35a458aa301e42"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_2_in_32_minus_one",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "421587",
//!             "0xFFFFFFFF"
//!           ],
//!           "caller": "0x975a5272b0425b15b3d761c2aef0b659e8e31a7a"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "421587",
//!             "0x100000000"
//!           ],
//!           "caller": "0x71438b83d3ff66c85b1701fa6b8cc061f923f34b"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_bigger_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "421587",
//!             "3334353453452342342354355544445321191012012"
//!           ],
//!           "caller": "0xb31b2be540a57b48d044730dea682b11cb3fbe8e"
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
//!           "method": "test",
//!           "calldata": [
//!             "421587",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0xb68d544d0e3bf97d43a2406b46dfef4a56fd8613"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_words_zero",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xF100",
//!             "0"
//!           ],
//!           "caller": "0xe1a6ffda6fc228c80b5acd04c4dc4f57336d591c"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_words_one",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xF100",
//!             "1"
//!           ],
//!           "caller": "0x2719f09aea1fb75b8cfda3d631c82cffe9572d80"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_words_small_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xF100",
//!             "19"
//!           ],
//!           "caller": "0x0c6450579d57f54cc17250e1542b90959c0e5d14"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_words_word",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xF100",
//!             "32"
//!           ],
//!           "caller": "0x04e41803730fed72f8c76d818c0fe00a16974aca"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_words_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xF100",
//!             "2383"
//!           ],
//!           "caller": "0x4895b2c51b39ca95583219ffe148fadf13269228"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_words_ordinar_words",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xF100",
//!             "0xF100"
//!           ],
//!           "caller": "0xa8c652ffab200155d45e2c9da14337f2354a275b"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_words_big_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xF100",
//!             "0xFFFFFFAA"
//!           ],
//!           "caller": "0xe8f22d64597f009ce07e33c340ecc36f9ac9dd92"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_words_2_in_32_minus_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xF100",
//!             "0xFFFFFFE0"
//!           ],
//!           "caller": "0xc363abed58ceefb0dc4c1de4e1d367caa1f8c498"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_words_2_in_32_minus_31",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xF100",
//!             "0xFFFFFFE1"
//!           ],
//!           "caller": "0x4853e2d4081b1e3e4bb45b2438c4fcdc0e058460"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_words_2_in_32_minus_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xF100",
//!             "0xFFFFFFEF"
//!           ],
//!           "caller": "0x543a3397083979c8fa23dd1d390cf2bbb76ed407"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_words_2_in_32_minus_one",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xF100",
//!             "0xFFFFFFFF"
//!           ],
//!           "caller": "0x025243001fbafdb47a71d9fa1b560e8e6ccfc94f"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_words_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xF100",
//!             "0x100000000"
//!           ],
//!           "caller": "0x9bc83e6703ec0dac4567f3ea2669f0e74be301d2"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_words_ordinar_bigger_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xF100",
//!             "3334353453452342342354355544445321191012012"
//!           ],
//!           "caller": "0x5f0b978999d33df78709b1f3fc39140e35b93fcf"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_words_max",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xF100",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0x9a0e02f9eb076d28d5367146d87c9db975ff132d"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "big_ordinar_zero",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFAA",
//!             "0"
//!           ],
//!           "caller": "0x28b121a7ede0c591d39cc200dc3c79435b27193c"
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
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFAA",
//!             "1"
//!           ],
//!           "caller": "0x627fc6ef8a3e87d6bc411e1dbda3c3977af4cc77"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "big_ordinar_small_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFAA",
//!             "19"
//!           ],
//!           "caller": "0x52ea30b0858fa34b6e4320c36f407250ef9825ec"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "big_ordinar_word",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFAA",
//!             "32"
//!           ],
//!           "caller": "0xc7a0567f5f8d0d71f4195d47e783ecf46901c3cc"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "big_ordinar_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFAA",
//!             "2383"
//!           ],
//!           "caller": "0x5393ec13aa6b4423ed34afa08ca996e569560b71"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "big_ordinar_ordinar_words",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFAA",
//!             "0xF100"
//!           ],
//!           "caller": "0xd4c55058453ecbd5bf3561c26c483d128b6e9e7f"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "big_ordinar_big_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFAA",
//!             "0xFFFFFFAA"
//!           ],
//!           "caller": "0x04668de103a706038fcafd8b88c00ed1738a753c"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "big_ordinar_2_in_32_minus_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFAA",
//!             "0xFFFFFFE0"
//!           ],
//!           "caller": "0xb6f5c7d7e253f473672552c22f49e3c61d0fb91a"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "big_ordinar_2_in_32_minus_31",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFAA",
//!             "0xFFFFFFE1"
//!           ],
//!           "caller": "0x50d803d5e5f1075881883d10bcef5c8c124849ec"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "big_ordinar_2_in_32_minus_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFAA",
//!             "0xFFFFFFEF"
//!           ],
//!           "caller": "0xa1df56cc1946421c015d74bef5470632e253dc58"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "big_ordinar_2_in_32_minus_one",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFAA",
//!             "0xFFFFFFFF"
//!           ],
//!           "caller": "0xc00eac1432b723300523a4fe77926fd7b0427bfd"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "big_ordinar_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFAA",
//!             "0x100000000"
//!           ],
//!           "caller": "0xf28ea4691841ad169dacea9e1ae13be34f55f149"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "big_ordinar_ordinar_bigger_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFAA",
//!             "3334353453452342342354355544445321191012012"
//!           ],
//!           "caller": "0x323e4a09163d1cd47eb6b0adf7fe6b876b76aae1"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "big_ordinar_max",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFAA",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0xf75df67527d95dc0f3667c7ef8db2bd4400ea604"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_32_zero",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFE0",
//!             "0"
//!           ],
//!           "caller": "0x86185f461842f8406f855d5034142b231da67a20"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_32_one",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFE0",
//!             "1"
//!           ],
//!           "caller": "0x859be17923f7197d2baea0229ce9b58e55457592"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_32_small_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFE0",
//!             "19"
//!           ],
//!           "caller": "0x739960120fe1f821c96594c9431057dc7c22b094"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_32_word",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFE0",
//!             "32"
//!           ],
//!           "caller": "0x7001612be7b71391bc58a7221e242219c3c78c02"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_32_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFE0",
//!             "2383"
//!           ],
//!           "caller": "0xef5aa06f67352b599bf225b0b8d8f978111c9abb"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_32_ordinar_words",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFE0",
//!             "0xF100"
//!           ],
//!           "caller": "0x553f77a2045523f4692af330b0367c2a22375c4f"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_32_big_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFE0",
//!             "0xFFFFFFAA"
//!           ],
//!           "caller": "0xa4ef2ac598314e6e376bab2e57721a0407b541b6"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_32_2_in_32_minus_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFE0",
//!             "0xFFFFFFE0"
//!           ],
//!           "caller": "0x305b15f288fb47d1a1643e98dc19c9feb20a2026"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_32_2_in_32_minus_31",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFE0",
//!             "0xFFFFFFE1"
//!           ],
//!           "caller": "0xfb465eb3d0e17fdee3bb6fb1c9874dbe5de68df7"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_32_2_in_32_minus_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFE0",
//!             "0xFFFFFFEF"
//!           ],
//!           "caller": "0xa93035d586ea8c8d1d3b2f60bf7e16e46944a67d"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_32_2_in_32_minus_one",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFE0",
//!             "0xFFFFFFFF"
//!           ],
//!           "caller": "0x9024b85528e4e3ba6124196dd354a3c546d13bca"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_32_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFE0",
//!             "0x100000000"
//!           ],
//!           "caller": "0xf9f8ac0bfb5dc1ab73cd2943ef06287c25d6ceb5"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_32_ordinar_bigger_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFE0",
//!             "3334353453452342342354355544445321191012012"
//!           ],
//!           "caller": "0xe68825922c0b5c87c32d20cccb47e302c806bf47"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_32_max",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFE0",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0x656a9c4d51cddae75625576ae5a2da4980db5e77"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_31_zero",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFE1",
//!             "0"
//!           ],
//!           "caller": "0xc69e41c1f9634810fd783701958efeecdd6bec1a"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_31_one",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFE1",
//!             "1"
//!           ],
//!           "caller": "0xa3b2a5279938fb3a98b0e6ef2a601e5ea7c1d60a"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_31_small_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFE1",
//!             "19"
//!           ],
//!           "caller": "0x7254153821365458641b869f9671de90342ca533"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_31_word",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFE1",
//!             "32"
//!           ],
//!           "caller": "0xc0685a8b389f51d3b63e17f992d885dfceb4883b"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_31_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFE1",
//!             "2383"
//!           ],
//!           "caller": "0xe2a5b8f6384682ee40d0dc5baec7d20aa77c261a"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_31_ordinar_words",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFE1",
//!             "0xF100"
//!           ],
//!           "caller": "0x79be38fd01f74a22869367537e91814c48c3d736"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_31_big_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFE1",
//!             "0xFFFFFFAA"
//!           ],
//!           "caller": "0x0b2350d4b06f6bdc107723330bdccecb06939363"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_31_2_in_32_minus_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFE1",
//!             "0xFFFFFFE0"
//!           ],
//!           "caller": "0xf2c76d58fe7197706601de6267711d171df2de37"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_31_2_in_32_minus_31",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFE1",
//!             "0xFFFFFFE1"
//!           ],
//!           "caller": "0x62f6e9729312598be8c59f6bbd2b137d095f265b"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_31_2_in_32_minus_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFE1",
//!             "0xFFFFFFEF"
//!           ],
//!           "caller": "0x6124c61315ea81ca04e04c91a6e0bfcfc6845fec"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_31_2_in_32_minus_one",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFE1",
//!             "0xFFFFFFFF"
//!           ],
//!           "caller": "0xd6ae5f83d3c68d6a1c60e494b796b116d0da8d27"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_31_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFE1",
//!             "0x100000000"
//!           ],
//!           "caller": "0x1545c47d8d2db96f285d473a66ff94ca1f0ea7d8"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_31_ordinar_bigger_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFE1",
//!             "3334353453452342342354355544445321191012012"
//!           ],
//!           "caller": "0x1a3c7244bf36067b46031b5716924c46da0a7cd1"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_31_max",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFE1",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0x827aadddfaeafa9f5e493d26b951bea580bdd492"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_ordinar_zero",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFEF",
//!             "0"
//!           ],
//!           "caller": "0x841efe06164661b385b4fcc81f945f795dc93460"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_ordinar_one",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFEF",
//!             "1"
//!           ],
//!           "caller": "0xab332fd8ee766f7577e5bfa1b3e7a3e9ad248d28"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_ordinar_small_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFEF",
//!             "19"
//!           ],
//!           "caller": "0x5ee299527ac4a34808402ea7eda491abd39c3289"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_ordinar_word",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFEF",
//!             "32"
//!           ],
//!           "caller": "0x3524175435e037e9dd30cbf0d9a0ac3c6def5027"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_ordinar_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFEF",
//!             "2383"
//!           ],
//!           "caller": "0x267228fc1e0cdd70e5907fdd47451f0bdaa6186c"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_ordinar_ordinar_words",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFEF",
//!             "0xF100"
//!           ],
//!           "caller": "0x367ebaf6ea934217e38212b6e2878e4fc22bcc01"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_ordinar_big_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFEF",
//!             "0xFFFFFFAA"
//!           ],
//!           "caller": "0xf378ddd728ec9bb78dfe2f5f260138469a727ddc"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_ordinar_2_in_32_minus_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFEF",
//!             "0xFFFFFFE0"
//!           ],
//!           "caller": "0x3fb401d76ab63338f4f8561fbefdca8763526d7a"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_ordinar_2_in_32_minus_31",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFEF",
//!             "0xFFFFFFE1"
//!           ],
//!           "caller": "0x22731ada24cac06a7b9e6d1297f6ec02c1c53f27"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_ordinar_2_in_32_minus_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFEF",
//!             "0xFFFFFFEF"
//!           ],
//!           "caller": "0xba149244fb22e617d767cd310e0c6bbf1a55b977"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_ordinar_2_in_32_minus_one",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFEF",
//!             "0xFFFFFFFF"
//!           ],
//!           "caller": "0x6aae1a5927824656e4d6bb92b6fd73048adcdfe8"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_ordinar_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFEF",
//!             "0x100000000"
//!           ],
//!           "caller": "0x5b3f059975990109b9816277f6f32db10ef00931"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_ordinar_ordinar_bigger_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFEF",
//!             "3334353453452342342354355544445321191012012"
//!           ],
//!           "caller": "0x1ab12fb1da309e8b6b463d71b07e314ba9dd495f"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_ordinar_max",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFEF",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0x11d4cad91a1820e7cf266c4099dd9707dfd2ed4a"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_one_zero",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFFF",
//!             "0"
//!           ],
//!           "caller": "0x25e843a0873d207e7f8da525b7904f3cca92e3ef"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_one_one",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFFF",
//!             "1"
//!           ],
//!           "caller": "0x08bf03b512e43f267341fbfc12bcba2e9543ad35"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_one_small_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFFF",
//!             "19"
//!           ],
//!           "caller": "0x3b5eb96ab5832cdc7fdcb15511de69e7ffbc4141"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_one_word",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFFF",
//!             "32"
//!           ],
//!           "caller": "0xeacdcdcb5b112f800cc8e08561ede70c8e8faf72"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_one_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFFF",
//!             "2383"
//!           ],
//!           "caller": "0xcc12549ddd333e41ff1502340ae16ef3abfdce4d"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_one_ordinar_words",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFFF",
//!             "0xF100"
//!           ],
//!           "caller": "0xfc1fe212346b88460689dab37d1d9f1d19e80cae"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_one_big_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFFF",
//!             "0xFFFFFFAA"
//!           ],
//!           "caller": "0x3596211a51091dafeda755ae6cd681a121a8f4fe"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_one_2_in_32_minus_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFFF",
//!             "0xFFFFFFE0"
//!           ],
//!           "caller": "0x888830dacadc7b4393391b7092a700e60406b373"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_one_2_in_32_minus_31",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFFF",
//!             "0xFFFFFFE1"
//!           ],
//!           "caller": "0xff286a6a0e48a567e951ca3c76de9158d39ab5e3"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_one_2_in_32_minus_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFFF",
//!             "0xFFFFFFEF"
//!           ],
//!           "caller": "0x4963c83d796c54b2c35cf8282e8bb2b14a91b65e"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_one_2_in_32_minus_one",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFFF",
//!             "0xFFFFFFFF"
//!           ],
//!           "caller": "0x89a83923f013090e896fb503ac2916d694b34aac"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_one_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFFF",
//!             "0x100000000"
//!           ],
//!           "caller": "0x9c5212f134d7ce082bdbfb6f05355c6a805feec7"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_one_ordinar_bigger_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFFF",
//!             "3334353453452342342354355544445321191012012"
//!           ],
//!           "caller": "0x8f76368d561aa96666b3ad8647011d36f2bb4b23"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_one_max",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFFF",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0x2707a4b5fb0b3e456e26064e75617266d8073dcd"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_zero",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0x100000000",
//!             "0"
//!           ],
//!           "caller": "0x5e4a1d572130375ee6606fd367af987fcb45bf8b"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_one",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0x100000000",
//!             "1"
//!           ],
//!           "caller": "0xfd88427713d0e39e26bc81ef5a95efb72524a038"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_small_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0x100000000",
//!             "19"
//!           ],
//!           "caller": "0xdd31c3e72f684ffd5b35160705e128b8a37f291e"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_word",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0x100000000",
//!             "32"
//!           ],
//!           "caller": "0xb39d3b47202a3df15f00802222ceea203df14709"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0x100000000",
//!             "2383"
//!           ],
//!           "caller": "0x1fa25528155d5bf2222c9bba951d5e676f360afb"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_ordinar_words",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0x100000000",
//!             "0xF100"
//!           ],
//!           "caller": "0x15e52c9a3b9ce7b4a0754be3f93375f89d4021da"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_big_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0x100000000",
//!             "0xFFFFFFAA"
//!           ],
//!           "caller": "0x331da1891f5d94abbafc7f1fa241ad8ce8e0217e"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_2_in_32_minus_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0x100000000",
//!             "0xFFFFFFE0"
//!           ],
//!           "caller": "0xaee262eceee230c24af93d54ec9013de5ad08b48"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_2_in_32_minus_31",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0x100000000",
//!             "0xFFFFFFE1"
//!           ],
//!           "caller": "0x48e96c8abe72ea9b9f6cd0f13d0671947c001d06"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_2_in_32_minus_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0x100000000",
//!             "0xFFFFFFEF"
//!           ],
//!           "caller": "0x8a774161b1b33ea77d75637e21052363d5e3ef9e"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_2_in_32_minus_one",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0x100000000",
//!             "0xFFFFFFFF"
//!           ],
//!           "caller": "0x62ba8b743f9172d82a1b065325b572d06728585a"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0x100000000",
//!             "0x100000000"
//!           ],
//!           "caller": "0x948c9e45947bba601e28036d710dfac378e13e8e"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_ordinar_bigger_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0x100000000",
//!             "3334353453452342342354355544445321191012012"
//!           ],
//!           "caller": "0xd5c507f45649c102e4a8436cdb517275cf95fb0d"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_max",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0x100000000",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0xd93998b5c66f9203b602454dc1daf82f4c420770"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_bigger_2_in_32_zero",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "3334353453452342342354355544445321191012012",
//!             "0"
//!           ],
//!           "caller": "0xa09cbf6829821071efa11679313aea900ffffb84"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_bigger_2_in_32_one",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "3334353453452342342354355544445321191012012",
//!             "1"
//!           ],
//!           "caller": "0xf900a21d834c9c2b869e2f9362117a397c6424f9"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_bigger_2_in_32_small_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "3334353453452342342354355544445321191012012",
//!             "19"
//!           ],
//!           "caller": "0x9e1a8895b643deb4d7f311ef0e3a14262797078f"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_bigger_2_in_32_word",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "3334353453452342342354355544445321191012012",
//!             "32"
//!           ],
//!           "caller": "0x8a8bda0422ebf2f6a379a7be05468a21437ce4d8"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_bigger_2_in_32_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "3334353453452342342354355544445321191012012",
//!             "2383"
//!           ],
//!           "caller": "0xd8475765c9b05e9ae28604c4ee67ffc502a0c2c2"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_bigger_2_in_32_ordinar_words",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "3334353453452342342354355544445321191012012",
//!             "0xF100"
//!           ],
//!           "caller": "0xe7132ac952b396dfb60ec472ce12bc910187a7ba"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_bigger_2_in_32_big_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "3334353453452342342354355544445321191012012",
//!             "0xFFFFFFAA"
//!           ],
//!           "caller": "0x4bd35674bcc104fe2ad836f19a51d1406df79754"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_bigger_2_in_32_2_in_32_minus_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "3334353453452342342354355544445321191012012",
//!             "0xFFFFFFE0"
//!           ],
//!           "caller": "0x4ad8e15a1d13fb8295a7fc87c6c076b9c836ee84"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_bigger_2_in_32_2_in_32_minus_31",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "3334353453452342342354355544445321191012012",
//!             "0xFFFFFFE1"
//!           ],
//!           "caller": "0x0b821b224064245a7687c3db00c51ed4df078bf6"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_bigger_2_in_32_2_in_32_minus_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "3334353453452342342354355544445321191012012",
//!             "0xFFFFFFEF"
//!           ],
//!           "caller": "0xc3f509c22bcd04c442be73b44a5e12f6c61f0207"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_bigger_2_in_32_2_in_32_minus_one",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "3334353453452342342354355544445321191012012",
//!             "0xFFFFFFFF"
//!           ],
//!           "caller": "0xa17ed3f353b388720f08325d9854fe849f4fb6da"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_bigger_2_in_32_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "3334353453452342342354355544445321191012012",
//!             "0x100000000"
//!           ],
//!           "caller": "0xe324714e95037724250153a35f1af91aa23630cd"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_bigger_2_in_32_ordinar_bigger_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "3334353453452342342354355544445321191012012",
//!             "3334353453452342342354355544445321191012012"
//!           ],
//!           "caller": "0x25af861a609622d6acdbbc30fedcbf5ac2b126fc"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_bigger_2_in_32_max",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "3334353453452342342354355544445321191012012",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0xc19290333a4e562cd396bf9f110cb740963fc9fd"
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
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "0"
//!           ],
//!           "caller": "0xb2dc92443af3b0b04ed7798c45566ffef42c6d05"
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
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "1"
//!           ],
//!           "caller": "0x934513f52101b208f33edec5812a0e76a697e3e6"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "max_small_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "19"
//!           ],
//!           "caller": "0xc9175230205a9090cb7d91c78cd889935ced832d"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "max_word",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "32"
//!           ],
//!           "caller": "0x0eefeea95fb936c75a26b926bc431392ce9576da"
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
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "2383"
//!           ],
//!           "caller": "0xea9b3ecb0d1d8fdd0d758f819f6c98c56a0e1166"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "max_ordinar_words",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "0xF100"
//!           ],
//!           "caller": "0x239358d62b3a5d2a9995f3a8cf1049ce456dfe8a"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "max_big_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "0xFFFFFFAA"
//!           ],
//!           "caller": "0x73d9756479f42aea9c1463d3d8d9810733eeba21"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "max_2_in_32_minus_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "0xFFFFFFE0"
//!           ],
//!           "caller": "0x5a75e38a7fc4e41ca1bf9ccdbd9c82249f7a092b"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "max_2_in_32_minus_31",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "0xFFFFFFE1"
//!           ],
//!           "caller": "0x0bc4c955737ab875d94b37d703766ae8dcfdfc80"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "max_2_in_32_minus_ordinar",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "0xFFFFFFEF"
//!           ],
//!           "caller": "0xe3c33eb6c0f7387383171e48b0dd083e73831bd3"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "max_2_in_32_minus_one",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "0xFFFFFFFF"
//!           ],
//!           "caller": "0xd197b31c20be78d94722ad650cc51e515029bd28"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "max_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "0x100000000"
//!           ],
//!           "caller": "0x2dd29997398b76e09efa4fbe4cfe50b34c5ad8e0"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "max_ordinar_bigger_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "3334353453452342342354355544445321191012012"
//!           ],
//!           "caller": "0x94398b08337337605a82c2d860821d2475e1c1ff"
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
//!           "method": "test",
//!           "calldata": [
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0x98535b65729f1a3b78860dfc0ca76b6b52425b34"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "one_value_one_len",
//!       "inputs": [
//!         {
//!           "method": "test_with_value",
//!           "calldata": [
//!             "0",
//!             "1",
//!             "1"
//!           ],
//!           "caller": "0xda724726615574852714655bc4601bb1fd7cd848"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "one_value_small_ordinar_len",
//!       "inputs": [
//!         {
//!           "method": "test_with_value",
//!           "calldata": [
//!             "123122",
//!             "19",
//!             "1"
//!           ],
//!           "caller": "0x641b87304650696219282bf3d55ff7f33cd2f197"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "one_value_word_len",
//!       "inputs": [
//!         {
//!           "method": "test_with_value",
//!           "calldata": [
//!             "12",
//!             "32",
//!             "1"
//!           ],
//!           "caller": "0x554223d85482b9d684502e344df28e1c0ac54bc7"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "one_value_ordinar_len",
//!       "inputs": [
//!         {
//!           "method": "test_with_value",
//!           "calldata": [
//!             "1024",
//!             "2383",
//!             "1"
//!           ],
//!           "caller": "0x70435b97f2cfba3076dcf314678729bb3991ca7d"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "one_value_ordinar_words_len",
//!       "inputs": [
//!         {
//!           "method": "test_with_value",
//!           "calldata": [
//!             "1",
//!             "0xF100",
//!             "1"
//!           ],
//!           "caller": "0x9f2495062cd959c42e5bb2867138a125c63fb17a"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_value_one_len",
//!       "inputs": [
//!         {
//!           "method": "test_with_value",
//!           "calldata": [
//!             "0",
//!             "1",
//!             "0xA1"
//!           ],
//!           "caller": "0xb7dcd4ff30040c58eda8ba3bca6736fdad467660"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_value_small_ordinar_len",
//!       "inputs": [
//!         {
//!           "method": "test_with_value",
//!           "calldata": [
//!             "123122",
//!             "19",
//!             "0x44"
//!           ],
//!           "caller": "0x0e2acebc290a9651d55f4a8ffab9fa48d7427dad"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_value_word_len",
//!       "inputs": [
//!         {
//!           "method": "test_with_value",
//!           "calldata": [
//!             "12",
//!             "32",
//!             "0xE6"
//!           ],
//!           "caller": "0x002e6b79a26ca7a7145bcf24ad238435a2febafa"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_value_ordinar_len",
//!       "inputs": [
//!         {
//!           "method": "test_with_value",
//!           "calldata": [
//!             "1024",
//!             "2383",
//!             "0xD5"
//!           ],
//!           "caller": "0x349188f7109085ce8b627c57c980044faff4aaf2"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_value_ordinar_words_len",
//!       "inputs": [
//!         {
//!           "method": "test_with_value",
//!           "calldata": [
//!             "1",
//!             "0xF100",
//!             "0x82"
//!           ],
//!           "caller": "0xa6a396c4e95ce61aa0556cc770edf5bde1955149"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "max_value_one_len",
//!       "inputs": [
//!         {
//!           "method": "test_with_value",
//!           "calldata": [
//!             "0",
//!             "1",
//!             "0xFF"
//!           ],
//!           "caller": "0xa7f648d3fd78f45e7dd311d99d2ae0e87cb4d7e5"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "max_value_small_ordinar_len",
//!       "inputs": [
//!         {
//!           "method": "test_with_value",
//!           "calldata": [
//!             "123122",
//!             "19",
//!             "0xFF"
//!           ],
//!           "caller": "0xa6932306fc9e6662e1ffadb5c3cd06d02c474820"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "max_value_word_len",
//!       "inputs": [
//!         {
//!           "method": "test_with_value",
//!           "calldata": [
//!             "12",
//!             "32",
//!             "0xFF"
//!           ],
//!           "caller": "0xdf2927caa205fac839094cb081a42cc06da6e36f"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "max_value_ordinar_len",
//!       "inputs": [
//!         {
//!           "method": "test_with_value",
//!           "calldata": [
//!             "1024",
//!             "2383",
//!             "0xFF"
//!           ],
//!           "caller": "0x0376aac07ad725e01357b1725b5cec61ae10473c"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "max_value_ordinar_words_len",
//!       "inputs": [
//!         {
//!           "method": "test_with_value",
//!           "calldata": [
//!             "1",
//!             "0xF100",
//!             "0xFF"
//!           ],
//!           "caller": "0xd55b216d3730162045ef30d6e427441eb3a3c816"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.21;

// TODO: enable some cases with zero sizes after the VM fix
contract Test {
    function test(uint256 offset, uint256 len) external {
        assembly {
            mstore(0, 0xcc572cf9) // main selector
            mstore(32, offset)
            mstore(64, len)
            let success := call(gas(), address(), 0, 28, 68, 0, 0)

            mstore(0, success)
            returndatacopy(32, 0, returndatasize())
            if iszero(success) {
                return(0, add(returndatasize(), 32))
            }

            if iszero(eq(len, returndatasize())) {
                return(0, add(returndatasize(), 32))
            }

            for { let i := 0 } lt(i, len) { i := add(i, 1) }
            {
                if iszero(eq(shr(248, mload(add(i, 32))), 0)) {
                    return(0, add(returndatasize(), 32))
                }
            }

            // return some magic value in a success case
            mstore(0, 0xdeadbeef)
            return(0, 32)
        }
    }

    function test_with_value(uint256 offset, uint256 len, uint8 val) external {
        assembly {
            mstore(0, 0xc9b9b445) // with_value selector
            mstore(32, offset)
            mstore(64, len)
            mstore(96, val)
            let success := call(gas(), address(), 0, 28, 100, 32, len)

            mstore(0, success)
            if iszero(success) {
                return(0, add(returndatasize(), 32))
            }

            if iszero(eq(len, returndatasize())) {
                return(0, add(returndatasize(), 32))
            }

            for { let i := 0 } lt(i, len) { i := add(i, 1) }
            {
                if iszero(eq(shr(248, mload(add(i, 32))), val)) {
                    return(0, add(returndatasize(), 32))
                }
            }

            // return some magic value in a success case
            mstore(0, 0xdeadbeef)
            return(0, 32)
        }
    }

    function main(uint256 offset, uint256 len) external pure {
        assembly {
            // nullify memory ptr slot
            mstore(0x40, 0)
            return(offset, len)
        }
    }

    function with_value(uint256 offset, uint256 len, uint8 val) external pure {
        assembly {
            for { let i := 0 } lt(i, len) { i := add(i, 1) }
            {
                mstore8(add(offset, i), val)
            }
            return(offset, len)
        }
    }
}
