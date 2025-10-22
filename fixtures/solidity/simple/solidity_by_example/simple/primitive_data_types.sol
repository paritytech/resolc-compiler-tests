//! {
//!   "cases": [
//!     {
//!       "name": "boo",
//!       "inputs": [
//!         {
//!           "method": "boo",
//!           "calldata": [],
//!           "caller": "0x91add7f40c5447fe8cfb9fb3c9a8d19fd644630c"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "u8",
//!       "inputs": [
//!         {
//!           "method": "u8",
//!           "calldata": [],
//!           "caller": "0x9217b8704509f85835d5b4bfd28194d301edc535"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "u256",
//!       "inputs": [
//!         {
//!           "method": "u256",
//!           "calldata": [],
//!           "caller": "0xb4c0cf22cbd2cd0d7cae59a8455e18226d248686"
//!         }
//!       ],
//!       "expected": [
//!         "456"
//!       ]
//!     },
//!     {
//!       "name": "u",
//!       "inputs": [
//!         {
//!           "method": "u()",
//!           "calldata": [],
//!           "caller": "0x8f090523a30ba25bdf59eff42b5a8b9e58395b07"
//!         }
//!       ],
//!       "expected": [
//!         "123"
//!       ]
//!     },
//!     {
//!       "name": "i8",
//!       "inputs": [
//!         {
//!           "method": "i8",
//!           "calldata": [],
//!           "caller": "0xa6c6f67be688fe7dc9c4010548d8c5712b3d72ed"
//!         }
//!       ],
//!       "expected": [
//!         "-1"
//!       ]
//!     },
//!     {
//!       "name": "i256",
//!       "inputs": [
//!         {
//!           "method": "i256",
//!           "calldata": [],
//!           "caller": "0x6374caca1711608f9ad1dc0cfde72c9d75cf1603"
//!         }
//!       ],
//!       "expected": [
//!         "456"
//!       ]
//!     },
//!     {
//!       "name": "i",
//!       "inputs": [
//!         {
//!           "method": "i()",
//!           "calldata": [],
//!           "caller": "0x8d9a3d7843162a297cf5899ad513154c36bc5006"
//!         }
//!       ],
//!       "expected": [
//!         "-123"
//!       ]
//!     },
//!     {
//!       "name": "minInt",
//!       "inputs": [
//!         {
//!           "method": "minInt",
//!           "calldata": [],
//!           "caller": "0x76552303461bb8df59ddfab19f5b6f4e0fd007b7"
//!         }
//!       ],
//!       "expected": [
//!         "0x8000000000000000000000000000000000000000000000000000000000000000"
//!       ]
//!     },
//!     {
//!       "name": "maxInt",
//!       "inputs": [
//!         {
//!           "method": "maxInt",
//!           "calldata": [],
//!           "caller": "0xee1275c06603edb397a88acc40c225ec96e6fce3"
//!         }
//!       ],
//!       "expected": [
//!         "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!       ]
//!     },
//!     {
//!       "name": "addr",
//!       "inputs": [
//!         {
//!           "method": "addr",
//!           "calldata": [],
//!           "caller": "0x4736056dabc0df39a5ea201de4adbbb5777318ea"
//!         }
//!       ],
//!       "expected": [
//!         "0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c"
//!       ]
//!     },
//!     {
//!       "name": "defaultBoo",
//!       "inputs": [
//!         {
//!           "method": "defaultBoo",
//!           "calldata": [],
//!           "caller": "0x440d9ab59a4ed2f575666c23ef8c17c53a96e3e0"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "defaultUint",
//!       "inputs": [
//!         {
//!           "method": "defaultUint",
//!           "calldata": [],
//!           "caller": "0xaec44d50374a514c41c16cc28f052f43eb0673c8"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "defaultInt",
//!       "inputs": [
//!         {
//!           "method": "defaultInt",
//!           "calldata": [],
//!           "caller": "0x42ba888683427589be5633b0c97954a1e1665548"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "defaultAddr",
//!       "inputs": [
//!         {
//!           "method": "defaultAddr",
//!           "calldata": [],
//!           "caller": "0x1e9bd383f88dc3c12a40e6ce7356d1a9843cd30e"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT
pragma solidity >=0.6.8;

contract Test {
    bool public boo = true;

    /*
    uint stands for unsigned integer, meaning non negative integers
    different sizes are available
        uint8   ranges from 0 to 2 ** 8 - 1
        uint16  ranges from 0 to 2 ** 16 - 1
        ...
        uint256 ranges from 0 to 2 ** 256 - 1
    */
    uint8 public u8 = 1;
    uint public u256 = 456;
    uint public u = 123; // uint is an alias for uint256

    /*
    Negative numbers are allowed for int types.
    Like uint, different ranges are available from int8 to int256

    int256 ranges from -2 ** 255 to 2 ** 255 - 1
    int128 ranges from -2 ** 127 to 2 ** 127 - 1
    */
    int8 public i8 = -1;
    int public i256 = 456;
    int public i = -123; // int is same as int256

    // minimum and maximum of int
    int public minInt = type(int).min;
    int public maxInt = type(int).max;

    address public addr = 0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c;

    // Default values
    // Unassigned variables have a default value
    bool public defaultBoo; // false
    uint public defaultUint; // 0
    int public defaultInt; // 0
    address public defaultAddr; // 0x0000000000000000000000000000000000000000
}
