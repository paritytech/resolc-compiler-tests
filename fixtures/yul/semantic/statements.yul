//! {
//!   "cases": [
//!     {
//!       "name": "simple_statement",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "0"
//!           ],
//!           "caller": "0xA469dB3d718d16f4eb4CDA29aBA28dB037d551F3"
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
//!       "name": "nested_statements",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "1"
//!           ],
//!           "caller": "0x4e2b0Ab5cce1d243A110544E707acB67118d90d2"
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
//!       "name": "return_in_middle",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "2"
//!           ],
//!           "caller": "0x8DDb6136ce4D7b0D5e6d45cD617E1A286C911354"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [
//!           "0xdeadbeef"
//!         ],
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
//!       "name": "revert_in_middle",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "3"
//!           ],
//!           "caller": "0x9ca323457A84643Cc95cb65e4eFE983F755b102c"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [
//!           "0xdeadbeef"
//!         ],
//!         "exception": true
//!       }
//!     },
//!     {
//!       "name": "return_in_nested_statement",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "4"
//!           ],
//!           "caller": "0xabF28c83FfeF12164aDFa03DA0119a2b79309CE0"
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
//!               "0xdeadbeef01"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "revert_in_nested_statement",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "5"
//!           ],
//!           "caller": "0x8538697eC716e2DAd068040c4072667D8EDc257b"
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
//!       "name": "complex",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "6"
//!           ],
//!           "caller": "0x01725c833fA371A2F0645BC0A13A9b60e9E7b3F5"
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
//!               "0xdeadbeef04"
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
                // simple_statement
                case 0 {
                    {
                        mstore(0, 0xdeadbeef)
                        log0(0, 32)
                    }
                }
                // nested_statements
                case 1 {
                    {
                        {
                            mstore(0, 0xdeadbeef01)
                            log0(0, 32)
                        }
                        mstore(0, 0xdeadbeef02)
                        log0(0, 32)
                    }
                }
                // return_in_middle
                case 2 {
                    {
                        mstore(0, 0xdeadbeef)
                        log0(0, 32)
                        return(0, 32)
                        mstore(0, 0xdeadbeef02)
                        log0(0, 32)
                    }
                }
                // revert_in_middle
                case 3 {
                    {
                        mstore(0, 0xdeadbeef)
                        log0(0, 32)
                        revert(0, 32)
                        mstore(0, 0xdeadbeef02)
                        log0(0, 32)
                    }
                }
                // return_in_nested_statement
                case 4 {
                    {
                        mstore(0, 0xdeadbeef01)
                        log0(0, 32)
                        {
                            mstore(0, 0xdeadbeef02)
                            return(0, 32)
                        }
                    }
                }
                // revert_in_nested_statement
                case 5 {
                    {
                        mstore(0, 0xdeadbeef01)
                        log0(0, 32)
                        {
                            mstore(0, 0xdeadbeef02)
                            revert(0, 32)
                        }
                    }
                }
                // complex
                case 6 {
                    {{
                        mstore(0, 0xdeadbeef01)
                        log0(0, 32)
                        {{{{{{{{{{{{{{{
                            {{{{{{{{{{{
                                mstore(0, 0xdeadbeef02)
                                log0(0, 32)
                            }}}}}}}}}}}
                            mstore(0, 0xdeadbeef03)
                            log0(0, 32)
                        }}}}}}}}}}}}}}}
                        mstore(0, 0xdeadbeef04)
                        log0(0, 32)
                    }}
                    mstore(0, 0xdeadbeef05)
                    log0(0, 32)
                }
            }
        }
    }
}