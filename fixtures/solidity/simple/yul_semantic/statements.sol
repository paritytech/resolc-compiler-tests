//! {
//!   "cases": [
//!     {
//!       "name": "simple_statement",
//!       "inputs": [
//!         {
//!           "method": "simple_statement",
//!           "calldata": [],
//!           "caller": "0x01c7487d1A097220ce3f0Ce84c94E54f72DF0CEe"
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
//!           "caller": "0xdEa17e4138E6a515B7B50dE1a7bc980A67F74125"
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
//!           "caller": "0x2E81936579A6dd1d9E7a15C18489CA4470CDBFEE"
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
//!           "caller": "0x01671DBf7A33cE7ee508c9B60505674518A3e3Ec"
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
//!           "caller": "0x8659f73a8f13E08C5765BA7e6A2825Faa7f47460"
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
//!           "caller": "0xEdc93cDaf812e34F9b57dEe5A9E0388c11c43da1"
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
//!           "caller": "0xc6649ea40a001059C06876D5d3C14a9D4D6720Ed"
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
