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
//!           "caller": "0x891D0342AA02502a7048DcC5d9D11E130788F081"
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
//!       "name": "false_condition",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "1"
//!           ],
//!           "caller": "0x883Aec15c4878F0B1270A58d5181aEadec333728"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef01"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "string_condition",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "2"
//!           ],
//!           "caller": "0x6c60f98b203dbC873202FfEBE5cC0dA5CB1C93ee"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef02"
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
//!             "3"
//!           ],
//!           "caller": "0xF24966379fd7757A6Fc18E5246DC9a3D6e02f4D8"
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
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "zero_condition",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "4"
//!           ],
//!           "caller": "0x5B18767fad3677B55F7cECEa4b68f60127068cfA"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef04"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "one_condition",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "5"
//!           ],
//!           "caller": "0x4A74cA859123413bC2200b1DafEf5950532D93B1"
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
//!             "6"
//!           ],
//!           "caller": "0x09D1aa23cC64A4dbc0bdF5ed0AA312ef2BeE9280"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef06"
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
//!             "7"
//!           ],
//!           "caller": "0xb5ceC4E8e6d0c1C0f012bC92A8FbC019fb17E437"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef07"
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
//!             "8"
//!           ],
//!           "caller": "0x3e66FB7011F68912251Df4E80b1622d8b3655633"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef08"
//!       ]
//!     },
//!     {
//!       "name": "revert_in_condition",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "9"
//!           ],
//!           "caller": "0x1aC6a7F4465211D00C29878Baf57567606EAd0ff"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": [
//!           "0xdeadbeef09"
//!         ]
//!       }
//!     },
//!     {
//!       "name": "return_in_case",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "10"
//!           ],
//!           "caller": "0x76A2382AFb8d37b0ac2bFe3B8b7dDE8A839a596c"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef0a"
//!       ]
//!     },
//!     {
//!       "name": "revert_in_case",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "11"
//!           ],
//!           "caller": "0xa954e28F0Bf73c71444c84E6eBB248D6b4Db6fE8"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": [
//!           "0xdeadbeef0b"
//!         ]
//!       }
//!     },
//!     {
//!       "name": "nested_switchs",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "12"
//!           ],
//!           "caller": "0xdBC4dF305ca84d7C130668edDC815D69B59d0637"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef0c"
//!       ]
//!     },
//!     {
//!       "name": "one_reachable_case",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "13"
//!           ],
//!           "caller": "0x13cF781Db1444266EFB869f3e0e56E64066e0d36"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef0d"
//!       ]
//!     },
//!     {
//!       "name": "one_unreachable_case",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "14"
//!           ],
//!           "caller": "0x6BB6Ac90dF0811108626286Bf5e1e907b85AF1F9"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef0e"
//!       ]
//!     },
//!     {
//!       "name": "only_default_case",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "15"
//!           ],
//!           "caller": "0x531C543077AcC5a75fAA4242C52887975623E148"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef0f"
//!       ]
//!     },
//!     {
//!       "name": "reachable_default_case",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "16"
//!           ],
//!           "caller": "0x8Eb26636D90E0B18e55c2D565DA012CCdb205698"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef10"
//!       ]
//!     },
//!     {
//!       "name": "unreachable_default_case",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "17"
//!           ],
//!           "caller": "0xE10dD11390b67cf6f5A0EB11A695E6A0d53316C5"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef11"
//!       ]
//!     },
//!     {
//!       "name": "empty_default_case_condition_side_effect",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "18"
//!           ],
//!           "caller": "0x9c33d68a2Ad072425D9EA421828F4da4991F49Ea"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef12"
//!       ]
//!     },
//!     {
//!       "name": "many_cases",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "19"
//!           ],
//!           "caller": "0x2d44b3b6ec162fc563bbBf351Dc35c43938026F2"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef13"
//!       ]
//!     },
//!     {
//!       "name": "complex",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "20"
//!           ],
//!           "caller": "0x6B92F84a56591EA47544435aD19923fDDE5bA35f"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [
//!           "0xdeadbeef04"
//!         ],
//!         "events": [
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
//!               "0xdeadbeef04"
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
                    switch true
                        case 12312 {
                            mstore(0, 0xe2202)
                            log0(0, 32)
                        }
                        case 1 {
                            mstore(0, 0xdeadbeef)
                            log0(0, 32)
                        }
                    return(0, 0)
                }
                // false_condition
                case 1 {
                    switch false
                        case 1 {
                            mstore(0, 0xe2202)
                            log0(0, 32)
                        }
                        case 0 {
                            mstore(0, 0xdeadbeef01)
                            log0(0, 32)
                        }
                    return(0, 0)
                }
                // string_condition
                case 2 {
                    switch "abc"
                        case "acd" {
                            mstore(0, 0xe2202)
                            log0(0, 32)
                        }
                        case 44048180597813453602326562734351324025098966208897425494240603688123167145984 {
                            mstore(0, 0xdeadbeef02)
                            log0(0, 32)
                        }
                    return(0, 0)
                }
                // empty_string_condition
                case 3 {
                    switch ""
                        case "0" {
                            mstore(0, 0xe2202)
                            log0(0, 32)
                        }
                        case 0 {
                            mstore(0, 0xdeadbeef03)
                            log0(0, 32)
                        }
                    return(0, 0)
                }
                // zero_condition
                case 4 {
                    switch 0
                        case true {
                            mstore(0, 0xe2202)
                            log0(0, 32)
                        }
                        case false {
                            mstore(0, 0xdeadbeef04)
                            log0(0, 32)
                        }
                    return(0, 0)
                }
                // one_condition
                case 5 {
                    switch 1
                        case 0x10 {
                            mstore(0, 0xe2202)
                            log0(0, 32)
                        }
                        case 1 {
                            mstore(0, 0xdeadbeef05)
                            log0(0, 32)
                        }
                    return(0, 0)
                }
                // number_condition
                case 6 {
                    switch 344342323832832883
                        case 344342323832832884 {
                            mstore(0, 0xe2202)
                            log0(0, 32)
                        }
                        case 344342323832832883 {
                            mstore(0, 0xdeadbeef06)
                            log0(0, 32)
                        }
                    return(0, 0)
                }
                // runtime_condition
                case 7 {
                    switch add(callvalue(), 100)
                        case 212 {
                            mstore(0, 0xe2202)
                            log0(0, 32)
                        }
                        case 100 {
                            mstore(0, 0xdeadbeef07)
                            log0(0, 32)
                        }
                    return(0, 0)
                }
                // return_in_condition
                case 8 {
                    function f() -> ret {
                        mstore(0, 0xdeadbeef08)
                        ret := 1
                        return(0, 32)
                    }
                    switch f()
                        case 0 {
                            mstore(0, 0xdeadbeef)
                        }
                    revert(0, 32)
                }
                // revert_in_condition
                case 9 {
                    function f() -> ret {
                        mstore(0, 0xdeadbeef09)
                        revert(0, 32)
                    }
                    switch f()
                        case 0 {}
                        default {
                            mstore(0, 0xdeadbeef)
                        }
                    return(0, 32)
                }
                // return_in_case
                case 10 {
                    switch 4
                        case 4  {
                            mstore(0, 0xdeadbeef0a)
                            return(0, 32)
                        }
                        case 5 {
                            mstore(0, 0xe2202)
                            log0(0, 32)
                        }
                    revert(0, 32)
                }
                // revert_in_case
                case 11 {
                    switch 100
                        case 0 {
                            mstore(0, 0xe2202)
                            log0(0, 32)
                        }
                        case 100 {
                            mstore(0, 0xdeadbeef0b)
                            revert(0, 32)
                        }
                        default {
                            mstore(0, 0xe2202)
                            log0(0, 32)
                        }
                    return(0, 32)
                }
                // nested_switchs
                case 12 {
                    switch true
                        case 1 {
                            switch 10
                                case 10 {
                                    mstore(0, 0xdeadbeef0c)
                                }
                                case 11 {
                                    mstore(0, 0xe2202)
                                    log0(0, 32)
                                }
                        }
                        default {
                            mstore(0, 0xe2202)
                            log0(0, 32)
                        }
                    return(0, 32)
                }
                // one_reachable_case
                case 13 {
                    switch 100
                        case 100 {
                            mstore(0, 0xdeadbeef0d)
                        }
                    return(0, 32)
                }
                // one_unreachable_case
                case 14 {
                    mstore(0, 0xdeadbeef0e)
                    switch 10
                        case 11 {
                            mstore(0, 0xe2202)
                        }
                    return(0, 32)
                }
                // only_default_case
                case 15 {
                    switch "a"
                        case 0 {}
                        default {
                            mstore(0, 0xdeadbeef0f)
                        }
                    return(0, 32)
                }
                // reachable_default_case
                case 16 {
                    switch 1231233123
                        case 0 {
                            mstore(0, 0xe2202)
                            log0(0, 32)
                        }
                        case "a" {
                            mstore(0, 0xe2202)
                            log0(0, 32)
                        }
                        default {
                            mstore(0, 0xdeadbeef10)
                        }
                    return(0, 32)
                }
                // unreachable_default_case
                case 17 {
                    switch 49
                        case 0 {
                            mstore(0, 0xe2202)
                            log0(0, 32)
                        }
                        case 49 {
                            mstore(0, 0xdeadbeef11)
                        }
                        case 222 {
                            mstore(0, 0xe2202)
                            log0(0, 32)
                        }
                        default {
                            mstore(0, 0xe2202)
                            log0(0, 32)
                        }
                    return(0, 32)
                }
                // empty_default_case_condition_side_effect
                case 18 {
                    function f() -> ret {
                        mstore(0, 0xdeadbeef12)
                    }
                    switch f()
                        case 0 {}
                        default {}
                    return(0, 32)
                }
                // many_cases
                case 19 {
                    switch 100
                        case 0 {
                            mstore(0, 0xe2202)
                            log0(0, 32)
                        }
                        case 20 {
                            mstore(0, 0xe2202)
                            log0(0, 32)
                        }
                        case 40 {
                            mstore(0, 0xe2202)
                            log0(0, 32)
                        }
                        case 60 {
                            mstore(0, 0xe2202)
                            log0(0, 32)
                        }
                        case 80 {
                            mstore(0, 0xe2202)
                            log0(0, 32)
                        }
                        case 100 {
                            mstore(0, 0xdeadbeef13)
                        }
                        case 120 {
                            mstore(0, 0xe2202)
                            log0(0, 32)
                        }
                        case 140 {
                            mstore(0, 0xe2202)
                            log0(0, 32)
                        }
                        case 160 {
                            mstore(0, 0xe2202)
                            log0(0, 32)
                        }
                        case 180 {
                            mstore(0, 0xe2202)
                            log0(0, 32)
                        }
                    return(0, 32)
                }
                // complex
                case 20 {
                    switch eq(callvalue(), 0)
                        case 1 {
                            switch "a"
                                case 0x6200000000000000000000000000000000000000000000000000000000000000 {
                                    mstore(0, 0xdeadbeef01)
                                    log0(0, 32)
                                }
                                default {
                                    mstore(0, 0xdeadbeef02)
                                    log0(0, 32)
                                    switch 5
                                        case 5 {
                                            mstore(0, 0xdeadbeef03)
                                            log0(0, 32)
                                        }
                                        default {
                                            revert(0, 32)
                                        }
                                }
                            mstore(0, 0xdeadbeef04)
                            log0(0, 32)
                            switch add(1, 2)
                                case 1 {
                                    revert(0, 32)
                                }
                                case 2 {
                                    revert(0, 32)
                                }
                        }
                        default {
                            switch 5
                                case 5 {
                                    mstore(0, 0xdeadbeef05)
                                    log0(0, 32)
                                }
                                case 4 {
                                    mstore(0, 0xdeadbeef06)
                                    log0(0, 32)
                                    revert(0, 32)
                                }
                        }
                    return(0, 32)
                }
            }
        }
    }
}