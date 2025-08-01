//! {
//!   "cases": [
//!     {
//!       "name": "simple_statement",
//!       "inputs": [
//!         {
//!           "method": "simple_statement",
//!           "calldata": [],
//!           "caller": "0x51E2e134C9D029608E81399Aa807548017786d3D"
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
//!           "caller": "0xCb9882EB823C337a140C5bd5BDa113a61D18A0b5"
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
//!           "caller": "0x95aC482d0720D27946fBd841e415E40aD41469d4"
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
//!           "caller": "0xF447AD17D0ff3AEA6fEf54CdA4644c30f19192a0"
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
//!           "caller": "0x8758b030001a8ec057942d513098b6bD46BF0cFd"
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
//!           "caller": "0xb8deA9b48047D6E308872057f84B92b3992aBb8A"
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
//!           "caller": "0xd35631055a05dAc22F5ca222423F3E61802376D9"
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
