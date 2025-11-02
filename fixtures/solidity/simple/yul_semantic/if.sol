//! {
//!   "cases": [
//!     {
//!       "name": "true_condition",
//!       "inputs": [
//!         {
//!           "method": "true_condition",
//!           "calldata": [],
//!           "caller": "0x08d2c22e47ae5c27f7e5e604a3024927f28efcaf"
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
//!           "method": "false_condition",
//!           "calldata": [],
//!           "caller": "0x913a0c289cadd3f617e9319f892470d4063d2f00"
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
//!           "method": "string_condition",
//!           "calldata": [],
//!           "caller": "0x94a87e6238aeafb33f4aecaf6079714c04729557"
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
//!           "method": "empty_string_condition",
//!           "calldata": [],
//!           "caller": "0x5156c4413b37ec273f7b61a71ba339de373b7bf3"
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
//!           "method": "zero_condition",
//!           "calldata": [],
//!           "caller": "0x08aabb80addb1ecd98c6d7f94a3737a6f107c584"
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
//!           "method": "one_condition",
//!           "calldata": [],
//!           "caller": "0xb2d80cb5218289d0ef343df4b427aa18dc62bbd2"
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
//!           "method": "number_condition",
//!           "calldata": [],
//!           "caller": "0x82946d333f2cde22a0182f1af8607faa1aa37814"
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
//!           "method": "true_runtime_condition",
//!           "calldata": [],
//!           "caller": "0xde3cb879acb6014012ecd6fcbc093f945ec88a2d"
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
//!           "method": "false_runtime_condition",
//!           "calldata": [],
//!           "caller": "0x908d21df3362e4f7280978122202a76fe9a6c1ee"
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
//!           "method": "return_in_condition",
//!           "calldata": [],
//!           "caller": "0xdf15304858e4ca3683bd48b205fba3a332536b77"
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
//!           "method": "revert_in_condition",
//!           "calldata": [],
//!           "caller": "0x52f08b381e295e1e1d6fbd7bafe8299bed7b5033"
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
//!           "method": "empty_statement_condition_side_effect",
//!           "calldata": [],
//!           "caller": "0x0d41ae48040ad260c88c2b3b30962460fed1980e"
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
//!           "method": "return_in_statement",
//!           "calldata": [],
//!           "caller": "0xe9a11659f3b5fbddfc2d04ce2a6c1b3db4bd821b"
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
//!           "method": "revert_in_statement",
//!           "calldata": [],
//!           "caller": "0xba96f25e8933d42d99b954924ee50cd1a2af3a8f"
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
//!           "method": "nested_ifs",
//!           "calldata": [],
//!           "caller": "0xb84e17b56d92e0ecb0ec452c834632635c8912d1"
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
//!           "method": "complex",
//!           "calldata": [],
//!           "caller": "0xa4fd8a822222359c5d8aa4494efb04bace928398"
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

// SPDX-License-Identifier: MIT

pragma solidity >=0.6.2;

contract Test {
    function true_condition() external pure {
        assembly {
            if true {
                mstore(0, 0xdeadbeef)
            }
            return(0, 32)
        }
    }

    function false_condition() external pure {
        assembly {
            mstore(0, 0xdeadbeef01)
            if false {
                mstore(0, 0xdeadbeef)
            }
            return(0, 32)
        }
    }

    function string_condition() external pure {
        assembly {
            if "abc" {
                mstore(0, 0xdeadbeef02)
            }
            return(0, 32)
        }
    }

    function empty_string_condition() external pure {
        assembly {
            mstore(0, 0xdeadbeef03)
            if "" {
                mstore(0, 0xdeadbeef)
            }
            return(0, 32)
        }
    }

    function zero_condition() external pure {
        assembly {
            mstore(0, 0xdeadbeef04)
            if 0 {
                mstore(0, 0xdeadbeef)
            }
            return(0, 32)
        }
    }

    function one_condition() external pure {
        assembly {
            if 1 {
                mstore(0, 0xdeadbeef05)
            }
            return(0, 32)
        }
    }


    function number_condition() external pure {
        assembly {
            if 344342323832832883 {
                mstore(0, 0xdeadbeef06)
            }
            return(0, 32)
        }
    }

    function true_runtime_condition() external payable {
        assembly {
            if eq(callvalue(), 0) {
                mstore(0, 0xdeadbeef07)
            }
            return(0, 32)
        }
    }

    function false_runtime_condition() external pure {
        assembly {
            mstore(0, 0xdeadbeef08)
            if eq(calldataload(0), 0) {
                mstore(0, 0xdeadbeef)
            }
            return(0, 32)
        }
    }

    function return_in_condition() external pure {
        assembly {
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
    }

    function revert_in_condition() external pure {
        assembly {
            function f() -> ret {
                mstore(0, 0xdeadbeef0a)
                revert(0, 32)
            }
            if f() {
                mstore(0, 0xdeadbeef)
            }
            return(0, 32)
        }
    }

    function empty_statement_condition_side_effect() external pure {
        assembly {
            function f() -> ret {
                mstore(0, 0xdeadbeef0b)
            }
            if f() {}
            return(0, 32)
        }
    }

    function return_in_statement() external pure {
        assembly {
            if true {
                mstore(0, 0xdeadbeef0c)
                return(0, 32)
            }
            revert(0, 32)
        }
    }

    function revert_in_statement() external pure {
        assembly {
            if true {
                mstore(0, 0xdeadbeef0d)
                revert(0, 32)
            }
            return(0, 32)
        }
    }

    function nested_ifs() external pure {
        assembly {
            if true {
                if true {
                    mstore(0, 0xdeadbeef0e)
                }
            }
            return(0, 32)
        }
    }

    function complex() external payable {
        assembly {
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
