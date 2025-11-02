//! {
//!   "cases": [
//!     {
//!       "name": "true_condition",
//!       "inputs": [
//!         {
//!           "method": "true_condition",
//!           "calldata": [],
//!           "caller": "0x1aa238405e3e7e30000f0631f0a76a123cee5c0d"
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
//!           "method": "false_condition",
//!           "calldata": [],
//!           "caller": "0xdd732b570ffe71cc00293c9326e86e3b0db24fdd"
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
//!           "method": "string_condition",
//!           "calldata": [],
//!           "caller": "0x424e8ee4eebae4adef3cf34dc495f5e29bd8dfef"
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
//!           "method": "empty_string_condition",
//!           "calldata": [],
//!           "caller": "0x8483a6b6279e300ee6e01cf5ba9c3e23c6f80536"
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
//!           "method": "zero_condition",
//!           "calldata": [],
//!           "caller": "0x0eae21b0b882f8dbe29b0ca08afc0127c4d26dec"
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
//!           "method": "one_condition",
//!           "calldata": [],
//!           "caller": "0x5e57bb010b8820883b400eb8bfe4c8efd73714a9"
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
//!           "method": "number_condition",
//!           "calldata": [],
//!           "caller": "0x2e696d417b0e44013a2fab70646907a04f066306"
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
//!           "method": "runtime_condition",
//!           "calldata": [],
//!           "caller": "0x18c299022dc8fcff0440388e96d14fd6b3c267a5"
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
//!           "method": "return_in_condition",
//!           "calldata": [],
//!           "caller": "0x39d6f50b696b3e3e5217953167b1e561f7e1d335"
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
//!           "method": "revert_in_condition",
//!           "calldata": [],
//!           "caller": "0xc9ddbd3c00253b4b5f54740e68814bbf6384c636"
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
//!           "method": "return_in_case",
//!           "calldata": [],
//!           "caller": "0x2b850681dcaed3eaddc7a848c13300c0c8d9a2d9"
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
//!           "method": "revert_in_case",
//!           "calldata": [],
//!           "caller": "0x78a032eccc36d69108781c4c3353401e97a4a7e8"
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
//!           "method": "nested_switchs",
//!           "calldata": [],
//!           "caller": "0x524eb9408cc3e341bc7d08479edab9b2add0a4c5"
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
//!           "method": "one_reachable_case",
//!           "calldata": [],
//!           "caller": "0x0340784a2f3829e1ed1946e767ed3edc5af0b6a8"
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
//!           "method": "one_unreachable_case",
//!           "calldata": [],
//!           "caller": "0xe69511760ec61a5a746fec459fc03daadfe3e235"
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
//!           "method": "only_default_case",
//!           "calldata": [],
//!           "caller": "0xb8106035fe9a4b6adf0cacf3cbef7a63ecfe290c"
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
//!           "method": "reachable_default_case",
//!           "calldata": [],
//!           "caller": "0xda08feed281fba5182469b3789257a3c3eedf6f4"
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
//!           "method": "unreachable_default_case",
//!           "calldata": [],
//!           "caller": "0x3b92ed3f0f8b8cda4c9207fda00fba8d8d3d15c8"
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
//!           "method": "empty_default_case_condition_side_effect",
//!           "calldata": [],
//!           "caller": "0x152126b5f7c62f1016bb2e7ab87b76371970c303"
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
//!           "method": "many_cases",
//!           "calldata": [],
//!           "caller": "0x030141044cf4d2562e9449f695a2cf8683ab42ef"
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
//!           "method": "complex",
//!           "calldata": [],
//!           "caller": "0x0d291ef81f5fc8756d5f9b2a06efd7971ef66138"
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

// SPDX-License-Identifier: MIT

pragma solidity >=0.6.2;

contract Test {
    function true_condition() external {
        assembly {
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
    }

    function false_condition() external {
        assembly {
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
    }

    function string_condition() external {
        assembly {
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
    }

    function empty_string_condition() external {
        assembly {
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
    }

    function zero_condition() external {
        assembly {
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
    }

    function one_condition() external {
        assembly {
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
    }

    function number_condition() external {
        assembly {
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
    }

    function runtime_condition() external payable {
        assembly {
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
    }

    function return_in_condition() external pure {
        assembly {
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
    }

    function revert_in_condition() external pure {
        assembly {
            function f() -> ret {
                mstore(0, 0xdeadbeef09)
                revert(0, 32)
            }
            switch f()
                default {
                    mstore(0, 0xdeadbeef)
                }
            return(0, 32)
        }
    }

    function return_in_case() external {
        assembly {
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
    }

    function revert_in_case() external {
        assembly {
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
    }

    function nested_switchs() external {
        assembly {
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
    }

    function one_reachable_case() external pure {
        assembly {
            switch 100
                case 100 {
                    mstore(0, 0xdeadbeef0d)
                }
            return(0, 32)
        }
    }

    function one_unreachable_case() external pure {
        assembly {
            mstore(0, 0xdeadbeef0e)
            switch 10
                case 11 {
                    mstore(0, 0xe2202)
                }
            return(0, 32)
        }
    }

    function only_default_case() external pure {
        assembly {
            switch "a"
                default {
                    mstore(0, 0xdeadbeef0f)
                }
            return(0, 32)
        }
    }

    function reachable_default_case() external {
        assembly {
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
    }

    function unreachable_default_case() external {
        assembly {
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
    }

    function empty_default_case_condition_side_effect() external pure {
        assembly {
            function f() -> ret {
                mstore(0, 0xdeadbeef12)
            }
            switch f()
            default {}
            return(0, 32)
        }
    }

    function many_cases() external {
        assembly {
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
    }

    function complex() external payable {
        assembly {
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
