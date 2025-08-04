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
//!           "caller": "0x8eADc5b3545a2bE93f9522901c6A1eB3dBeCFa62"
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
//!           "caller": "0x0A65239c2b63367EA968a4B3f6e0979568095F67"
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
//!           "caller": "0x6031B5Dc8E373c32DaA66863ED0E91C2940CEb9e"
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
//!           "caller": "0x73ef11e269dc8caB1B41Fb3f273FC13d53fE30ed"
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
//!           "caller": "0xca3DeC580404a5d2B13C86b5AEc76c2F5bEE178a"
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
//!           "caller": "0xa2F1fB24268cF61195595d9032ee237696DFdDb3"
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
//!           "caller": "0x418005fc25f474be16C188C6343687C4566864cD"
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
//!           "caller": "0x6f2bB68F27Ecd9641d5cdEF768Ad2fDAd2eb7c14"
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
//!           "caller": "0x0f045A6f580B8d64574091d5af921E26F7cFD0aA"
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
//!           "caller": "0x8b0B63387c2ce5a509579dF02ee453eFc2F99116"
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
//!           "caller": "0x0A5b8928FdaAC4c18Da57c38a9069Ac588446d7f"
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
//!           "caller": "0x6a30252195a5632827ABC6119B5f89b3b505f022"
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
//!           "caller": "0x451Ac3C19c59868b5281fDABC0306Bc818014e17"
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
//!           "caller": "0x9a96296eB1103858Db661bD98E8AA201974f702A"
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
//!           "caller": "0x4F8c3A54e364BE94AB56f52Dd74e89eDD19c1e4D"
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
//!           "caller": "0xaF6F91C89f9fC3f9E30b92161CEf3C74901A2796"
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
//!           "caller": "0x8d615747Ff16fa84A6D00D25ca60A350cD5D78B2"
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
//!           "caller": "0xd94B07cFa6766F2BE8881E040563B9f200DE4015"
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
//!           "caller": "0x0fd50C5D0d46e8Ca8CE2B77e26bA3D1f8954d1c7"
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
//!           "caller": "0x3d742b95f1985C4c4C94e992c77ffd7Cfa9C9205"
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
//!           "caller": "0x18F5cD8763d4f82f4E1ED288f5cB5DCfe5C65514"
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
//!           "caller": "0x2E1014f2Ef008d12300A7EC5Eb52A50a8d53245e"
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
//!           "caller": "0x668aA8cECbAEFdd636409f3E9F3d9096a489BbA1"
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
//!           "caller": "0x69Dbd9f1df90029887E81a3dEfd95aAA1AEA077e"
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
//!           "caller": "0x5d7312AcC4A70d2Cbc3745526B9202e6B14147f1"
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
//!           "caller": "0x38f28F845A0C056391dc5e89CC57fc080f8D5D35"
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
//!           "caller": "0x4c80B757B444588F67cc07e4EF83A5D4d946830F"
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
//!           "caller": "0xA2B02e742DCC2E4c3B2E747cCD5C85BaCE1290C9"
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
//!           "caller": "0xEA0E4A59856F4282AF1356737A945A51CDe546C8"
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
//!           "caller": "0xC8d16f0830875Aa29552326622338DC27e6470db"
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
//!           "caller": "0x3d84c799169fe89d0002fF8210943e6Bf4fAD1E8"
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