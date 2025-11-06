//! {
//!   "cases": [
//!     {
//!       "name": "zero_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "0"
//!           ],
//!           "caller": "0xefa6bf8b7462e17428f62b53b81414053ac0fbda"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "zero_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "1"
//!           ],
//!           "caller": "0x56cc34fee67ee0cec61cd09ab79b7f0752dbbaa7"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "zero_ordinar_to_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "0x0023892AB2783278893489CDE384983994390349FC2988248AA83483898934FC"
//!           ],
//!           "caller": "0xfb39d621658977d3195970098950d45f1c8d6ba6"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "zero_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "0x5348958934589349590349059034905903CDF343443AB34344343CCC34343443"
//!           ],
//!           "caller": "0xc726b00244cab281aabad2f4a4e09aecf4f31522"
//!         }
//!       ],
//!       "expected": [
//!         "0x53"
//!       ]
//!     },
//!     {
//!       "name": "zero_ordinar_to_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "0xFF872893489348939CA433905903CDF3488893483003400FC4983CCC34343443"
//!           ],
//!           "caller": "0xe7f599a5244c884a1752d0a57e567f2cf4b188dc"
//!         }
//!       ],
//!       "expected": [
//!         "255"
//!       ]
//!     },
//!     {
//!       "name": "zero_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0x562807c1300c278be083e0f49586daf5ec5eac6e"
//!         }
//!       ],
//!       "expected": [
//!         "255"
//!       ]
//!     },
//!     {
//!       "name": "one_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "0"
//!           ],
//!           "caller": "0x4ad9947170bba41ddb22e677de0245743c963aed"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "one_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "1"
//!           ],
//!           "caller": "0x74055b14cba0069ea5566d8346ba80abf3b748be"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "one_ordinar_to_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "0x2300892AB2783278893489CDE384983994390349FC2988248AA83483898934FC"
//!           ],
//!           "caller": "0x2037fa0e8a93736815f5634a0334e22eb972c521"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "one_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "0x5348958934589349590349059034905903CDF343443AB34344343CCC34343443"
//!           ],
//!           "caller": "0x3071abd3bd02dfffae10d96ad3f9ed0dcbe9776c"
//!         }
//!       ],
//!       "expected": [
//!         "0x48"
//!       ]
//!     },
//!     {
//!       "name": "one_ordinar_to_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "0x87FF2893489348939CA433905903CDF3488893483003400FC4983CCC34343443"
//!           ],
//!           "caller": "0x9c6aa382c186fc6025e8da16594f9c277a6699f3"
//!         }
//!       ],
//!       "expected": [
//!         "255"
//!       ]
//!     },
//!     {
//!       "name": "one_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0x17cd028d891f4c04de604551b469a17b819bed64"
//!         }
//!       ],
//!       "expected": [
//!         "255"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "17",
//!             "0"
//!           ],
//!           "caller": "0x2f5f9b7f122c58a84b3566265b189b047b5a47e2"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "17",
//!             "1"
//!           ],
//!           "caller": "0x925046f095765dc1a8c45586b0d61bb3ed873d50"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_to_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "17",
//!             "0x23892AB2783278893489CDE38498399439000349FC2988248AA83483898934FC"
//!           ],
//!           "caller": "0xcd118e53fdcdd54a53127348e32ff335a6dfc3b8"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "17",
//!             "0x5348958934589349590349059034905903CDF343443AB34344343CCC34343443"
//!           ],
//!           "caller": "0x2263052dda8cb9b48280cc4653b74d7881010e20"
//!         }
//!       ],
//!       "expected": [
//!         "0xCD"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_to_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "17",
//!             "0x872893489348939CA433905903CDF34888FF93483003400FC4983CCC34343443"
//!           ],
//!           "caller": "0xb4dbd8551d1c4ac024cde73111fe4fe8f0d43266"
//!         }
//!       ],
//!       "expected": [
//!         "255"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "17",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0x56e2a5c67015a6c6adb08af069c38df0a24f6594"
//!         }
//!       ],
//!       "expected": [
//!         "255"
//!       ]
//!     },
//!     {
//!       "name": "last_byte_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "31",
//!             "0"
//!           ],
//!           "caller": "0xd2863f9ee65faae2d60099801f61347c53486e36"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "last_byte_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "31",
//!             "1"
//!           ],
//!           "caller": "0x99da1c4a4e57f4b85d28a8b2019ea3f33953bb4d"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "last_byte_ordinar_to_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "31",
//!             "0x23892AB2783278893489CDE384983994390349FC2988248AA83483898934FC00"
//!           ],
//!           "caller": "0x75b44460410570fc459e606d1f997ecc7905eff3"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "last_byte_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "31",
//!             "0x5348958934589349590349059034905903CDF343443AB34344343CCC34343443"
//!           ],
//!           "caller": "0xb245fbad63f9672e78d5eb47773378957b6c7f5b"
//!         }
//!       ],
//!       "expected": [
//!         "0x43"
//!       ]
//!     },
//!     {
//!       "name": "last_byte_ordinar_to_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "31",
//!             "0x872893489348939CA433905903CDF3488893483003400FC4983CCC34343443FF"
//!           ],
//!           "caller": "0x0ebad57b48054f0bc706aa229e90399cf730d295"
//!         }
//!       ],
//!       "expected": [
//!         "255"
//!       ]
//!     },
//!     {
//!       "name": "last_byte_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "31",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0xf66311a749a210a2c7cc8b693c68940ac4b56d19"
//!         }
//!       ],
//!       "expected": [
//!         "255"
//!       ]
//!     },
//!     {
//!       "name": "last_byte_plus_one_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "32",
//!             "0"
//!           ],
//!           "caller": "0x9b99e06eefc198e86b167bdc2f41d2c52ba99ddd"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "last_byte_plus_one_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "32",
//!             "1"
//!           ],
//!           "caller": "0x49a26b6e1e748861092d2fb218b8e912fb8aded8"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "last_byte_plus_one_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "32",
//!             "0x5348958934589349590349059034905903CDF343443AB34344343CCC34343443"
//!           ],
//!           "caller": "0xb71390f30a37818fd67d02bf12f41c2a9c3c635a"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "last_byte_plus_one_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "32",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0x58d6d328405f5ca637d6fefa53aba128ee325bff"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "big_ordinar_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "35242523534534534233424343343443",
//!             "0"
//!           ],
//!           "caller": "0x1dc602a81182be9acf1175444deee352cdce8821"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "big_ordinar_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "35242523534534534233424343343443",
//!             "1"
//!           ],
//!           "caller": "0x73cecb633b619ba7f271366355f908a24b7218c9"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "big_ordinar_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "35242523534534534233424343343443",
//!             "0x5348958934589349590349059034905903CDF343443AB34344343CCC34343443"
//!           ],
//!           "caller": "0xa4581bc44d3e1ab36f2611eb386b3d4f93860e32"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "big_ordinar_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "35242523534534534233424343343443",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0x99a26c59b52b60fa7992ca74cd6702dd048757f8"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "max_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "0"
//!           ],
//!           "caller": "0x16d5b86471d112f4acb9e5f106822e8efb69d816"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "max_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "1"
//!           ],
//!           "caller": "0x01a0e86bb3763ff994daec7c26b2663788fe6d07"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "max_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "0x5348958934589349590349059034905903CDF343443AB34344343CCC34343443"
//!           ],
//!           "caller": "0x0ce3ae09752521fd845fcca8b144682e72607a80"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "max_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0xce4b91b6bf4b1dc144440ddaf0fca08747366698"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(uint256 a, uint256 b) external pure returns(uint256 result) {
        assembly {
            result := byte(a, b)
        }
    }
}
