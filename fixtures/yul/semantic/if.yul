//! {
//!   "cases": [
//!     {
//!       "name": "true_condition",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "0"
//!           ],
//!           "caller": "0xeb0E56F32246D043228faC8b63a71687D5199Af1"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "false_condition",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "1"
//!           ],
//!           "caller": "0xdb3ed822B78F0641623a12166607B5FA4dF862Ad"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef01"
//!       ]
//!     },
//!     {
//!       "name": "string_condition",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "2"
//!           ],
//!           "caller": "0xB88C19426F03c6981d1A4281c7414d842b97619a"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef02"
//!       ]
//!     },
//!     {
//!       "name": "empty_string_condition",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "3"
//!           ],
//!           "caller": "0x32e04b012ac811C91d36a355A6D2859A0071A965"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef03"
//!       ]
//!     },
//!     {
//!       "name": "zero_condition",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "4"
//!           ],
//!           "caller": "0xe0dd44773F7657b11019062879D65F3D9862460c"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef04"
//!       ]
//!     },
//!     {
//!       "name": "one_condition",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "5"
//!           ],
//!           "caller": "0x756Be12856A8F44AB22FdBCbD42B70b843377d09"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef05"
//!       ]
//!     },
//!     {
//!       "name": "number_condition",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "6"
//!           ],
//!           "caller": "0x6f4c950442e1Af093BcfF730381E63Ae9171b87a"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef06"
//!       ]
//!     },
//!     {
//!       "name": "true_runtime_condition",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "7"
//!           ],
//!           "caller": "0x4d1Bf28514A4451249908E611366Ec967C3d1558"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef07"
//!       ]
//!     },
//!     {
//!       "name": "false_runtime_condition",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "8"
//!           ],
//!           "caller": "0xB0142D883494197B02c6ECE84f571D81bd831124"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef08"
//!       ]
//!     },
//!     {
//!       "name": "return_in_condition",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "9"
//!           ],
//!           "caller": "0x1326324f5A9fb193409E10006e4EA41b970Df321"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef09"
//!       ]
//!     },
//!     {
//!       "name": "revert_in_condition",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "10"
//!           ],
//!           "caller": "0xF9A2C330a19e2FbFeB50fe7a7195b973bB0A3BE9"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": [
//!           "0xdeadbeef0a"
//!         ]
//!       }
//!     },
//!     {
//!       "name": "empty_statement_condition_side_effect",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "11"
//!           ],
//!           "caller": "0x7a601ffA997cEdE6435aeABf4Fa2091f09e149Ec"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef0b"
//!       ]
//!     },
//!     {
//!       "name": "return_in_statement",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "12"
//!           ],
//!           "caller": "0xa92F4b5c4FddCC37E5139873AC28a4A0a42d68df"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef0c"
//!       ]
//!     },
//!     {
//!       "name": "revert_in_statement",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "13"
//!           ],
//!           "caller": "0x850Cc185d6Cae4A7fDFB3dd81F977dD1dF7D6503"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": [
//!           "0xdeadbeef0d"
//!         ]
//!       }
//!     },
//!     {
//!       "name": "nested_ifs",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "14"
//!           ],
//!           "caller": "0xB1b7c87e8a0Bf2E7fd1a1C582bd353E4C4529341"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef0e"
//!       ]
//!     },
//!     {
//!       "name": "complex",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "15"
//!           ],
//!           "caller": "0xFF844Fdb49e00776Ad538Db9EA2f9fA98EC0cAF7"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [
//!           "0xdeadbeef02"
//!         ],
//!         "events": [
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef02"
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
                // true_condition
                case 0 {
                    if true {
                        mstore(0, 0xdeadbeef)
                    }
                    return(0, 32)
                }
                // false_condition
                case 1 {
                    mstore(0, 0xdeadbeef01)
                    if false {
                        mstore(0, 0xdeadbeef)
                    }
                    return(0, 32)
                }
                // string_condition
                case 2 {
                    if "abc" {
                        mstore(0, 0xdeadbeef02)
                    }
                    return(0, 32)
                }
                // empty_string_condition
                case 3 {
                    mstore(0, 0xdeadbeef03)
                    if "" {
                        mstore(0, 0xdeadbeef)
                    }
                    return(0, 32)
                }
                // zero_condition
                case 4 {
                    mstore(0, 0xdeadbeef04)
                    if 0 {
                        mstore(0, 0xdeadbeef)
                    }
                    return(0, 32)
                }
                // one_condition
                case 5 {
                    if 1 {
                        mstore(0, 0xdeadbeef05)
                    }
                    return(0, 32)
                }
                // number_condition
                case 6 {
                    if 344342323832832883 {
                        mstore(0, 0xdeadbeef06)
                    }
                    return(0, 32)
                }
                // true_runtime_condition
                case 7 {
                    if eq(callvalue(), 0) {
                        mstore(0, 0xdeadbeef07)
                    }
                    return(0, 32)
                }
                // false_runtime_condition
                case 8 {
                    mstore(0, 0xdeadbeef08)
                    if eq(calldataload(0), 0) {
                        mstore(0, 0xdeadbeef)
                    }
                    return(0, 32)
                }
                // return_in_condition
                case 9 {
                    function f() -> ret {
                        mstore(0, 0xdeadbeef09)
                        ret := 1
                        return(0, 32)
                    }
                    if f() {
                        mstore(0, 0xdeadbeef)
                    }
                    revert(0, 32)
                }
                // revert_in_condition
                case 10 {
                    function f() -> ret {
                        mstore(0, 0xdeadbeef0a)
                        revert(0, 32)
                    }
                    if f() {
                        mstore(0, 0xdeadbeef)
                    }
                    return(0, 32)
                }
                // empty_statement_condition_side_effect
                case 11 {
                    function f() -> ret {
                        mstore(0, 0xdeadbeef0b)
                    }
                    if f() {}
                    return(0, 32)
                }
                // return_in_statement
                case 12 {
                    if true {
                        mstore(0, 0xdeadbeef0c)
                        return(0, 32)
                    }
                    revert(0, 32)
                }
                // revert_in_statement
                case 13 {
                    if true {
                        mstore(0, 0xdeadbeef0d)
                        revert(0, 32)
                    }
                    return(0, 32)
                }
                // nested_ifs
                case 14 {
                    if true {
                        if true {
                            mstore(0, 0xdeadbeef0e)
                        }
                    }
                    return(0, 32)
                }
                // complex
                case 15 {
                    if true {
                        if false {
                            if eq(callvalue(), 0) {
                                mstore(0, 0xdeadbeef01)
                                log0(0, 32)
                            }
                            revert(0, 32)
                        }
                        mstore(0, 0xdeadbeef02)
                        log0(0, 32)
                        if eq(1, 1) {
                            if eq(callvalue(), 200) {
                                if false {
                                    mstore(0, 0xdeadbeef03)
                                    log0(0, 32)
                                }
                            }
                        }
                        if eq(add(1, 2), 3) {
                            if eq(1, 2) {
                                revert(0, 32)
                            }
                            if true {
                                return(0, 32)
                            }
                        }
                    }
                    revert(0, 32)
                }
            }
        }
    }
}