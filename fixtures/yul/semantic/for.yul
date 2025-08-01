//! {
//!   "cases": [
//!     {
//!       "name": "empty_init_block",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "0"
//!           ],
//!           "caller": "0xF1F6619B38A98d6De0800F1DefC0a6399eB6d30C"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "return_in_init_block",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "1"
//!           ],
//!           "caller": "0xF7Edc8FA1eCc32967F827C9043FcAe6ba73afA5c"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef01"
//!       ]
//!     },
//!     {
//!       "name": "revert_in_init_block",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "2"
//!           ],
//!           "caller": "0x4CCeBa2d7D2B4fdcE4304d3e09a1fea9fbEb1528"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [
//!           "0xdeadbeef02"
//!         ],
//!         "exception": true
//!       }
//!     },
//!     {
//!       "name": "true_condition",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "3"
//!           ],
//!           "caller": "0x3DA8D322CB2435dA26E9C9fEE670f9fB7Fe74E49"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef03"
//!             ]
//!           },
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef03"
//!             ]
//!           },
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef03"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "false_condition",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "4"
//!           ],
//!           "caller": "0xDbc23AE43a150ff8884B02Cea117b22D1c3b9796"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef04"
//!       ]
//!     },
//!     {
//!       "name": "string_condition",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "5"
//!           ],
//!           "caller": "0x68E527780872cda0216Ba0d8fBD58b67a5D5e351"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef05"
//!             ]
//!           },
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef05"
//!             ]
//!           },
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef05"
//!             ]
//!           },
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef05"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "empty_string_condition",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "6"
//!           ],
//!           "caller": "0x5A83529ff76Ac5723A87008c4D9B436AD4CA7d28"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef06"
//!       ]
//!     },
//!     {
//!       "name": "zero_condition",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "7"
//!           ],
//!           "caller": "0x8735015837bD10e05d9cf5EA43A2486Bf4Be156F"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef07"
//!       ]
//!     },
//!     {
//!       "name": "one_condition",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "8"
//!           ],
//!           "caller": "0xfaE394561e33e242c551d15D4625309EA4c0B97f"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef08"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "number_condition",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "9"
//!           ],
//!           "caller": "0x252Dae0A4b9d9b80F504F6418acd2d364C0c59cD"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef09"
//!             ]
//!           },
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef0a"
//!             ]
//!           },
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef0b"
//!             ]
//!           },
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef0c"
//!             ]
//!           },
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef0d"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "runtime_condition",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "10"
//!           ],
//!           "caller": "0x79196B90D1E952C5A43d4847CAA08d50b967c34A"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef0a"
//!             ]
//!           },
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef0a"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "return_in_condition",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "11"
//!           ],
//!           "caller": "0x4bd1280852Cadb002734647305AFC1db7ddD6Acb"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef0b"
//!       ]
//!     },
//!     {
//!       "name": "revert_in_condition",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "12"
//!           ],
//!           "caller": "0x811da72aCA31e56F770Fc33DF0e45fD08720E157"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [
//!           "0xdeadbeef0c"
//!         ],
//!         "exception": true
//!       }
//!     },
//!     {
//!       "name": "empty_post_block",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "13"
//!           ],
//!           "caller": "0x157bFBEcd023fD6384daD2Bded5DAD7e27Bf92E4"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef0d"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "return_in_post_block",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "14"
//!           ],
//!           "caller": "0x37dA28C050E3c0A1c0aC3BE97913EC038783dA4C"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [
//!           "0xdeadbeef0e"
//!         ],
//!         "events": [
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef0e"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "revert_in_post_block",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "15"
//!           ],
//!           "caller": "0x3Bc8287F1D872df4217283b7920D363F13Cf39D8"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [
//!           "0xdeadbeef0f"
//!         ],
//!         "exception": true
//!       }
//!     },
//!     {
//!       "name": "unreachable_post_block",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "16"
//!           ],
//!           "caller": "0xf4e2B0fcbd0DC4b326d8A52B718A7bb43BdBd072"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef10"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "empty_body",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "17"
//!           ],
//!           "caller": "0x9a5279029e9A2D6E787c5A09CB068AB3D45e209d"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef11"
//!             ]
//!           },
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef11"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "return_in_body",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "18"
//!           ],
//!           "caller": "0xc39677F5F47d5fE65ab24e66750e8FCa127c15BE"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [
//!           "0xdeadbeef12"
//!         ],
//!         "events": [
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef12"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "revert_in_body",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "19"
//!           ],
//!           "caller": "0x1dc728786E09F862E39Be1f39dD218EE37feB68D"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [
//!           "0xdeadbeef13"
//!         ],
//!         "exception": true
//!       }
//!     },
//!     {
//!       "name": "continue_in_body",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "20"
//!           ],
//!           "caller": "0x636CC65783084b9F370789c90F733DBBeb88925D"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef14"
//!             ]
//!           },
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef14"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "break_in_body",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "21"
//!           ],
//!           "caller": "0x4a7A7c2E09209dbE44A582cD92b0eDd7129E74be"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef15"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "nested_loops",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "22"
//!           ],
//!           "caller": "0xA56160A359F2EAa66f5c9df5245542B07339A9a6"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef16"
//!             ]
//!           },
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef17"
//!             ]
//!           },
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef18"
//!             ]
//!           },
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef19"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "continue_in_nested_loop",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "23"
//!           ],
//!           "caller": "0x6b09D6433a379752157fD1a9E537c5CAe5fa3168"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef17"
//!             ]
//!           },
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef17"
//!             ]
//!           },
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef18"
//!             ]
//!           },
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef17"
//!             ]
//!           },
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef17"
//!             ]
//!           },
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef18"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "break_in_nested_loop",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "24"
//!           ],
//!           "caller": "0x32E77DE0D74a5C7AF861aAEd324c6a4c488142a8"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef18"
//!             ]
//!           },
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef19"
//!             ]
//!           },
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef18"
//!             ]
//!           },
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef19"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "empty_loop_init_block_side_effect",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "25"
//!           ],
//!           "caller": "0x093d49D617a10F26915553255Ec3FEE532d2C12F"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef19"
//!       ]
//!     },
//!     {
//!       "name": "empty_loop_post_block_side_effect",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "26"
//!           ],
//!           "caller": "0x138854708D8B603c9b7d4d6e55b6d32D40557F4D"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef1a"
//!       ]
//!     },
//!     {
//!       "name": "empty_loop_condition_side_effect",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "27"
//!           ],
//!           "caller": "0x7dc0a40D64d72bb4590652B8f5C687bF7F26400c"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef1b"
//!       ]
//!     },
//!     {
//!       "name": "empty_loop_body_side_effect",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "28"
//!           ],
//!           "caller": "0x9358A525CC25aa571af0BCB5B98fBEAb045a5e36"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef1c"
//!       ]
//!     },
//!     {
//!       "name": "empty_loop",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "29"
//!           ],
//!           "caller": "0xd8E8EA89D71de89214fA39Ba13bA9FCDDc0d9467"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef1d"
//!       ]
//!     },
//!     {
//!       "name": "complex",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "30"
//!           ],
//!           "caller": "0xb56eD8f48979e1A948AD129199a600d0562cac51"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [
//!           "0xdeadbeef03"
//!         ],
//!         "events": [
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef01"
//!             ]
//!           },
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef02"
//!             ]
//!           },
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef02"
//!             ]
//!           },
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef01"
//!             ]
//!           },
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef02"
//!             ]
//!           },
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef02"
//!             ]
//!           },
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef03"
//!             ]
//!           },
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef03"
//!             ]
//!           },
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef03"
//!             ]
//!           }
//!         ]
//!       }
//!     }
//!   ]
//! }

object "Test" {
    code {
        {
            let size := datasize("Test_deployed")
            codecopy(0, dataoffset("Test_deployed"), size)
            return(0, size)
        }
    }

    object "Test_deployed" {
        code {
            {
                switch calldataload(0)
                // empty_init_block
                case 0 {
                    let i := 0
                    for {} lt(i, 1) { i := add(i, 1) } {
                        mstore(0, 0xdeadbeef)
                        log0(0, 32)
                    }
                    return(0, 0)
                }
                // return_in_init_block
                case 1 {
                    let i := 0
                    mstore(0, 0xdeadbeef01)
                    for { return(0, 32) } lt(i, 1) { i := add(i, 1) } {
                        mstore(0, 0xe2202)
                        log0(0, 32)
                    }
                    revert(0, 32)
                }
                // revert_in_init_block
                case 2 {
                    let i := 0
                    mstore(0, 0xdeadbeef02)
                    for { revert(0, 32) } lt(i, 1) { i := add(i, 1) } {
                        mstore(0, 0xe2202)
                        log0(0, 32)
                    }
                    return(0, 32)
                }
                // true_condition
                case 3 {
                    for { let i := 0 } true { i := add(i, 1) } {
                        mstore(0, 0xdeadbeef03)
                        log0(0, 32)
                        if eq(i, 2) {
                            break
                        }
                    }
                    return(0, 0)
                }
                // false_condition
                case 4 {
                    mstore(0, 0xdeadbeef04)
                    for { let i := 0 } false { i := add(i, 1) } {
                        mstore(0, 0xe2202)
                        log0(0, 32)
                    }
                    return(0, 32)
                }
                // string_condition
                case 5 {
                    for { let i := 0 } "abc" { i := add(i, 1) } {
                        mstore(0, 0xdeadbeef05)
                        log0(0, 32)
                        if eq(i, 3) {
                            break
                        }
                    }
                    return(0, 0)
                }
                // empty_string_condition
                case 6 {
                    mstore(0, 0xdeadbeef06)
                    for { let i := 0 } "" { i := add(i, 1) } {
                        mstore(0, 0xe2202)
                        log0(0, 32)
                    }
                    return(0, 32)
                }
                // zero_condition
                case 7 {
                    mstore(0, 0xdeadbeef07)
                    for { let i := 0 } 0 { i := add(i, 1) } {
                        mstore(0, 0xe2202)
                        log0(0, 32)
                    }
                    return(0, 32)
                }
                // one_condition
                case 8 {
                    for { let i := 0 } 1 { i := add(i, 1) } {
                        mstore(0, 0xdeadbeef08)
                        log0(0, 32)
                        if eq(i, 0) {
                            break
                        }
                    }
                    return(0, 0)
                }
                // number_condition
                case 9 {
                    for { let i := 0 } 344342323832832883 { i := add(i, 1) } {
                        mstore(0, add(0xdeadbeef09, i))
                        log0(0, 32)
                        if eq(i, 4) {
                            break
                        }
                    }
                    return(0, 0)
                }
                // runtime_condition
                case 10 {
                    for { let i := 0 } lt(add(callvalue(), i), 2) { i := add(i, 1) } {
                        mstore(0, 0xdeadbeef0a)
                        log0(0, 32)
                    }
                    return(0, 0)
                }
                // return_in_condition
                case 11 {
                    function f() -> ret {
                        mstore(0, 0xdeadbeef0b)
                        ret := 1
                        return(0, 32)
                    }
                    for { let i := 0 } f() { i := add(i, 1) } {
                        mstore(0, 0xe2202)
                        log0(0, 32)
                    }
                    revert(0, 32)
                }
                // revert_in_condition
                case 12 {
                    function f() -> ret {
                        mstore(0, 0xdeadbeef0c)
                        revert(0, 32)
                    }
                    for { let i := 0 } f() { i := add(i, 1) } {
                        mstore(0, 0xe2202)
                        log0(0, 32)
                    }
                    return(0, 32)
                }
                // empty_post_block
                case 13 {
                    for { let i := 0 } lt(i, 1) {} {
                        mstore(0, 0xdeadbeef0d)
                        log0(0, 32)
                        i := add(i, 1)
                    }
                    return(0, 0)
                }
                // return_in_post_block
                case 14 {
                    for { let i := 0 } true { mstore(0, 0xdeadbeef0e) return(0, 32) } {
                        mstore(0, 0xdeadbeef0e)
                        log0(0, 32)
                    }
                    revert(0, 32)
                }
                // revert_in_post_block
                case 15 {
                    for { let i := 0 } lt(i, 23232) { mstore(0, 0xdeadbeef0f) revert(0, 32) } {
                        mstore(0, 0xe2202)
                        log0(0, 32)
                    }
                    return(0, 32)
                }
                // unreachable_post_block
                case 16 {
                    for { let i := 0 } lt(i, 23232) { revert(0, 32) } {
                        mstore(0, 0xdeadbeef10)
                        log0(0, 32)
                        break
                    }
                    return(0, 0)
                }
                // empty_body
                case 17 {
                    for { let i := 0 } lt(i, 2) { mstore(0, 0xdeadbeef11) log0(0, 32) i := add(i, 1) } {}
                    return(0, 0)
                }
                // return_in_body
                case 18 {
                    for { let i := 0 } iszero(eq(i, 5)) { i := add(i, 1) } {
                        mstore(0, 0xdeadbeef12)
                        log0(0, 32)
                        return(0, 32)
                        mstore(0, 0xe2202)
                        log0(0, 32)
                    }
                    revert(0, 32)
                }
                // revert_in_body
                case 19 {
                    for { let i := 0 } iszero(eq(i, 5)) { i := add(i, 1) } {
                        mstore(0, 0xdeadbeef13)
                        revert(0, 32)
                        mstore(0, 0xe2202)
                        log0(0, 32)
                    }
                    return(0, 32)
                }
                // continue_in_body
                case 20 {
                    for { let i := 0 } iszero(eq(i, 2)) { i := add(i, 1) } {
                        mstore(0, 0xdeadbeef14)
                        log0(0, 32)
                        continue
                        revert(0, 32)
                    }
                    return(0, 0)
                }
                // break_in_body
                case 21 {
                    for { let i := 5 } gt(i, 3) { i := sub(i, 1) } {
                        mstore(0, 0xdeadbeef15)
                        log0(0, 32)
                        break
                        mstore(0, 0xe2202)
                        log0(0, 32)
                    }
                    return(0, 0)
                }
                // nested_loops
                case 22 {
                    for { let i := 0 } lt(i, 2) { i := add(i, 1) } {
                        for { let j := 0 } lt(j, 2) { j := add(j, 1) } {
                            mstore(0, add(0xdeadbeef16, add(mul(i, 2), j)))
                            log0(0, 32)
                        }
                    }
                    return(0, 0)
                }
                // continue_in_nested_loop
                case 23 {
                    for { let i := 0 } lt(i, 2) { i := add(i, 1) } {
                        for { let j := 0 } lt(j, 2) { j := add(j, 1) } {
                            mstore(0, 0xdeadbeef17)
                            log0(0, 32)
                            continue
                            mstore(0, 0xe2202)
                            log0(0, 32)
                        }
                        mstore(0, 0xdeadbeef18)
                        log0(0, 32)
                    }
                    return(0, 0)
                }
                // break_in_nested_loop
                case 24 {
                    for { let i := 0 } lt(i, 2) { i := add(i, 1) } {
                        for { let j := 0 } lt(j, 2) { j := add(j, 1) } {
                            mstore(0, 0xdeadbeef18)
                            log0(0, 32)
                            break
                            mstore(0, 0xe2202)
                            log0(0, 32)
                        }
                        mstore(0, 0xdeadbeef19)
                        log0(0, 32)
                    }
                    return(0, 0)
                }
                // empty_loop_init_block_side_effect
                case 25 {
                    for { mstore(0, 0xdeadbeef19) } false {} {}
                    return(0, 32)
                }
                // empty_loop_post_block_side_effect
                case 26 {
                    mstore(0, 0xdeadbeef1a)
                    for {} true { return(0, 32) } {}
                    revert(0, 0)
                }
                // empty_loop_condition_side_effect
                case 27 {
                    function f() -> ret {
                        mstore(0, 0xdeadbeef1b)
                    }
                    for {} f() {} {}
                    return(0, 32)
                }
                // empty_loop_body_side_effect
                case 28 {
                    mstore(0, 0xdeadbeef1c)
                    for {} true {} {
                        return(0, 32)
                    }
                    revert(0, 0)
                }
                // empty_loop
                case 29 {
                    mstore(0, 0xdeadbeef1d)
                    for {} false {} {}
                    return(0, 32)
                }
                // complex
                case 30 {
                    for {} true {} {
                        for { let i := 0 } lt(i, 2) { i := add(i, 1) } {
                            for { let p := callvalue() } lt(p, 2) { p := add(p, 1) } {
                                if eq(p, 1) {
                                    continue
                                }
                                mstore(0, 0xdeadbeef01)
                                log0(0, 32) // 1 * 2 * 1 = 2 times
                            }
                            for { let j := 2 } gt(j, 0) { j := sub(j, 1) } {
                                for {} true {} {
                                    mstore(0, 0xdeadbeef02)
                                    log0(0, 32) // 1 * 2 * 2 * 1 = 4 times
                                    break
                                    revert(0, 32)
                                }
                                if eq(j, 1) {
                                    break
                                }
                            }
                        }
                        for { let h := 1 } lt(h, 5) { h := add(h, 1) } {
                            mstore(0, 0xdeadbeef03)
                            log0(0, 32) // 1 * 3 = 3 times
                            if eq(h, 3) {
                                return(0, 32)
                            }
                        }
                        break
                    }
                    revert(0, 0)
                }
            }
        }
    }
}