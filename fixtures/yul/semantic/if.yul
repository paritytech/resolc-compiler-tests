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
//!           "caller": "0x342D5b3D0D6377BA71f1F75F7e74B64C75221B31"
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
//!           "caller": "0xe55A64c734b466f854055227Ec860278C4B3e6d5"
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
//!           "caller": "0xA77432A3974A6df7F021c52d35530bd0CC1F04E3"
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
//!           "caller": "0x3a0E41D83C715d621d7f77b40d5171499AF7371A"
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
//!           "caller": "0x0B749291c8bC8E4A41D8D9ceb039a74210C85863"
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
//!           "caller": "0x2ee8D4941AcC5E1e4D216008b1bADAeeAf4Cef32"
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
//!           "caller": "0x8ae22d36D35E922b9910641c6C2a67A588754E5D"
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
//!           "caller": "0x04AFE8455FC4D8931AC830A9721f0e1B49D47B04"
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
//!           "caller": "0x7cBA85fa4D2421AeB2C555f338D6618bE10f5563"
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
//!           "caller": "0xfFD2FC13bF68C2eb9202D9369ecDF6b8DB6873f7"
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
//!           "caller": "0x9023a0E133F85D1852C24bE237B33c1e19823077"
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
//!           "caller": "0x8A4f65D1e54E98586a44a43A3Ff3B568C39EaacB"
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
//!           "caller": "0x9F9fe97BBEd048730397F74d0Fc24F55d0e0a427"
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
//!           "caller": "0x21f81128363578AaA52B38dcDcD70287C6439f0B"
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
//!           "caller": "0x5A73f02137041D8002a6C0057a6Dba027F68AFdd"
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
//!           "caller": "0xbd4c65101FCA469c728b3f1eD31d4747A15C18c0"
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