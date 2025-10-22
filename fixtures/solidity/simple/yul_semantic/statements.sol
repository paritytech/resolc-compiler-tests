//! {
//!   "cases": [
//!     {
//!       "name": "simple_statement",
//!       "inputs": [
//!         {
//!           "method": "simple_statement",
//!           "calldata": [],
//!           "caller": "0x3c271de551fef7a4194ddf0053a68c37ee4ff44c"
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
//!           "method": "nested_statements",
//!           "calldata": [],
//!           "caller": "0xedcff9e30cd0491435393aad6c81e4254edb6001"
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
//!           "method": "return_in_middle",
//!           "calldata": [],
//!           "caller": "0x9cc37b908950b7d8f850d5b09be9316e869ff8ad"
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
//!           "method": "revert_in_middle",
//!           "calldata": [],
//!           "caller": "0x84fb3b770da00a86386447cb5d65c99beb9c853a"
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
//!           "method": "return_in_nested_statement",
//!           "calldata": [],
//!           "caller": "0x22c3e4e5da3441b3139747cffae3a5da656578ea"
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
//!           "method": "revert_in_nested_statement",
//!           "calldata": [],
//!           "caller": "0x45d37ef12d4574c58c1690aeee02a57cf3556e70"
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
//!           "method": "complex",
//!           "calldata": [],
//!           "caller": "0x86b47e131b7b1f8887b4eea7743e95cd4932de1c"
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

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.12;

contract Test {
    function simple_statement() external {
        assembly {
            {
                mstore(0, 0xdeadbeef)
                log0(0, 32)
            }
        }
    }


    function nested_statements() external {
        assembly {
            {
                {
                    mstore(0, 0xdeadbeef01)
                    log0(0, 32)
                }
                mstore(0, 0xdeadbeef02)
                log0(0, 32)
            }
        }
    }

    function return_in_middle() external {
        assembly {
            {
                mstore(0, 0xdeadbeef)
                log0(0, 32)
                return(0, 32)
                mstore(0, 0xdeadbeef02)
                log0(0, 32)
            }
        }
    }

    function revert_in_middle() external {
        assembly {
            {
                mstore(0, 0xdeadbeef)
                log0(0, 32)
                revert(0, 32)
                mstore(0, 0xdeadbeef02)
                log0(0, 32)
            }
        }
    }

    function return_in_nested_statement() external {
        assembly {
            {
                mstore(0, 0xdeadbeef01)
                log0(0, 32)
                {
                    mstore(0, 0xdeadbeef02)
                    return(0, 32)
                }
            }
        }
    }

    function revert_in_nested_statement() external {
        assembly {
            {
                mstore(0, 0xdeadbeef01)
                log0(0, 32)
                {
                    mstore(0, 0xdeadbeef02)
                    revert(0, 32)
                }
            }
        }
    }

    function complex() external {
        assembly {
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
