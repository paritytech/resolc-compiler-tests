//! {
//!   "cases": [
//!     {
//!       "name": "true_condition",
//!       "inputs": [
//!         {
//!           "method": "true_condition",
//!           "calldata": [],
//!           "caller": "0x6f00783d0d6d4197bebf44ecb8E0a7494c2a24Cc"
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
//!           "caller": "0x5992c573cB737226bE33EEBE6d1b64B2dBbB04fB"
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
//!           "caller": "0x5730489564F9b90C88A2026a15d61424B35710cB"
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
//!           "caller": "0xf6dbBb6A640147514bAA4F8945eb37a578830446"
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
//!           "caller": "0xe225e625744049880f6fd5667e056d927e580E66"
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
//!           "caller": "0x06AcB3D98e366A1DFCC557184cCc269693f94Bf9"
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
//!           "caller": "0x9743A04204CB276F377eFB7221bD12e94768a6fB"
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
//!           "caller": "0x0941DACcBaB4c7FB092738C361FBf37ab192DD25"
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
//!           "caller": "0xC3DD1fBa655C05D3ebdfC00d9d29746aB5763a11"
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
//!           "caller": "0x297fFEe9a949db2f22AFc56CD791d795D11eB7a6"
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
//!           "caller": "0xC462cf4b6ea4B20062FB08994375701b9486017C"
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
//!           "caller": "0xc3A82d56D93630191B06A161C518F81BdC174AB7"
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
//!           "caller": "0x18Ce1d5395c709682a418fD9B7Da7F2533B5Ef72"
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
//!           "caller": "0x2ca5a4581B726948bF9655De591a366810fA8B8a"
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
//!           "caller": "0xF7D727c75F965bA7a6B49300cD00734dA73D91Ac"
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
//!           "caller": "0xe32Ac4ae7e6b2F25B8369194010f3C441bfF70f1"
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
