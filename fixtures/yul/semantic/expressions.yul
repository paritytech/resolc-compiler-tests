//! {
//!   "cases": [
//!     {
//!       "name": "literal",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "0"
//!           ],
//!           "caller": "0xF5530221C76aF9201e99237fb552a5E95C048db7"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "variable",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "1"
//!           ],
//!           "caller": "0x79de92E6257a9765537833df95F3CDBaa24D96FB"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef01"
//!       ]
//!     },
//!     {
//!       "name": "function_call",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "2"
//!           ],
//!           "caller": "0xa57C3ce44Be2768C5c38C90bbA733C0ca357D9b9"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef02"
//!       ]
//!     },
//!     {
//!       "name": "nested_calls",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "3"
//!           ],
//!           "caller": "0x3E4902b6FaCeed4b739d6f90451D2a8204D47de2"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef0"
//!       ]
//!     },
//!     {
//!       "name": "evaluation_order",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "4"
//!           ],
//!           "caller": "0x7521d49AB3E0c9ff72F1ee5746CB035776196940"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [
//!           "0x300"
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
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "nested_calls_evaluation_order",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "5"
//!           ],
//!           "caller": "0x74E76140bdaaEbFb67AA97401d3762cbCa6Ab1e5"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [
//!           "0x600"
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
//!               "0xdeadbeef03"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "complex",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "6"
//!           ],
//!           "caller": "0xf22dE076b190A7B95bC5D75f135c46096c988510"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [
//!           "120"
//!         ],
//!         "events": [
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xbbb"
//!             ]
//!           },
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xaaa"
//!             ]
//!           },
//!           {
//!             "topics": [],
//!             "values": [
//!               "100"
//!             ]
//!           },
//!           {
//!             "topics": [],
//!             "values": [
//!               "1500000"
//!             ]
//!           },
//!           {
//!             "topics": [],
//!             "values": [
//!               "8888"
//!             ]
//!           },
//!           {
//!             "topics": [],
//!             "values": [
//!               "9999999"
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
                // literal
                case 0 {
                    mstore(0, 0xdeadbeef)
                }
                // variable
                case 1 {
                    let a := 0xdeadbeef01
                    mstore(0, 0xdeadbeef01)
                }
                // function_call
                case 2 {
                    function f() -> ret {
                        ret := 0xdeadbeef02
                    }
                    mstore(0, f())
                }
                // nested_calls
                case 3 {
                    function f1(a) -> ret {
                        ret := mul(2, a)
                    }
                    function f2(a) -> ret {
                        ret := mul(8, a)
                    }
                    mstore(0, f2(f1(0xdeadbeef))) // 0xdeadbeef * 2 * 8 = 16 * 0xdeadbeef = 0xdeadbeef0
                }
                // evaluation_order
                case 4 {
                    function side_effect_1() -> ret {
                        mstore(0, 0xdeadbeef01)
                        log0(0, 32)
                        ret := 0x100
                    }
                    function side_effect_2() -> ret {
                        mstore(0, 0xdeadbeef02)
                        log0(0, 32)
                        ret := 0x200
                    }
                    mstore(0, add(side_effect_2(), side_effect_1())) // 0x100 + 0x200 = 0x300
                }
                // nested_calls_evaluation_order
                case 5 {
                    function side_effect_1() -> ret {
                        mstore(0, 0xdeadbeef01)
                        log0(0, 32)
                        ret := 0x100
                    }
                    function side_effect_2() -> ret {
                        mstore(0, 0xdeadbeef02)
                        log0(0, 32)
                        ret := 0x200
                    }
                    function side_effect_3() -> ret {
                        mstore(0, 0xdeadbeef03)
                        log0(0, 32)
                        ret := 0x300
                    }
                    function sum(a, b) -> ret {
                        ret := add(a, b)
                    }
                    mstore(0, add(side_effect_3(), sum(side_effect_2(), side_effect_1()))) // 0x100 + 0x200 + 0x300 = 0x600
                }
                // complex
                case 6 {
                    function emit(a, b) -> ret {
                        mstore(0, a)
                        log0(0, 32)
                        ret := b
                    }
                    function fact(n) -> ret {
                        if eq(n, 0) {
                            ret := 1
                            leave
                        }
                        ret := mul(
                            fact(sub(n, 1)),
                            n
                        )
                    }
                    let a := 100
                    mstore(0, fact(
                        sub(
                            add(emit(9999999, 3), emit(8888, 8)), // 3 + 8 = 11
                            emit(
                                mul(
                                    a,
                                    mul(
                                        emit(a, 5), // 5
                                        add(emit(0xaaa, 1000), emit(0xbbb, 2000)) //  1000 + 2000 = 3000
                                    ) // 5 * 3000 = 15000
                                ), // 100 * 15000 = 1500000
                                fact(3) // 6
                            ) // 6
                        ) // 11 - 6 = 5
                    )) // 5! = 120
                }
                return(0, 32)
            }
        }
    }
}